<?php 
    include "../db_connect.php";
    // Session / user auth (uncomment when ready)
    // if (!isset($_SESSION['username'])) { ... }
  ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Book a Court</title>
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&family=Source+Code+Pro:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bookings.css">
  </head>
  <body>

  <!-- TOPBAR -->
  <header class="topbar">
    <a href="../index.php" class="back-btn">
      <i class="fas fa-arrow-left"></i> Back
    </a>
  </header>

  <!-- PAGE -->
  <div class="page">
    <div class="page-heading">Book a Court</div>
    <div class="page-sub">Click on any date to view availability and make a reservation.</div>
    <div class="cal-card">
      <div id="calendar"></div>
    </div>
  </div>

  <!-- ====== BOOKING MODAL ====== -->
  <div id="bookingModal" class="modal">
    <div class="modal-box">
      <div class="modal-head">
        <div class="modal-head-left">
          <div class="modal-head-eyebrow">Barangay Ermita Reservation</div>
          <h2>Book a Court</h2>
          <div class="selected-date" id="modalDateLabel">Select a date from the calendar</div>
        </div>
        <div class="modal-head-right">
          <div class="modal-head-icon"><i class="fas fa-basketball-ball"></i></div>
          <button class="close-x" id="closeBooking"><i class="fas fa-times"></i></button>
        </div>
      </div>

      <div class="modal-body">

        <!-- ── UNIFIED RESERVATIONS PANEL ── -->
        <div class="res-panel">
          <div class="unified-card">
            <div class="unified-card-head">
              <div class="uch-icon"><i class="fas fa-calendar-day"></i></div>
              <div>
                <div class="uch-title">AM / PM Reservations</div>
                <div class="uch-sub">All bookings for this date</div>
              </div>
              <div class="uch-count" id="allCount">0 booked</div>
            </div>
            <div class="unified-card-body">
              <!-- AM Section -->
              <div id="amList"><div class="period-empty"><i class="fas fa-sun"></i>No AM bookings yet</div></div>


            </div>
          </div>
        </div>

        <div class="form-panel">
          <h3>Your Booking Details</h3>
          <form method="POST" action="verify_process.php">

            <input type="hidden" name="fullname" id="fullnameHidden">
            <input type="hidden" name="email" id="emailHidden">
            <input type="hidden" name="phonenumber" id="phonenumberHidden">
            <input type="hidden" name="date" id="dateHidden">
            <input type="hidden" name="start_time" id="startHidden">
            <input type="hidden" name="end_time" id="endHidden">
            <input type="hidden" name="purpose" id="purposeHidden">

            <input type="hidden" id="dbDate" name="date">
            <input type="hidden" id="bookingCode" name="booking_code">
            <div class="form-grid">
              <div class="fg full"><label>Selected Date</label><input type="text" id="displayDate" readonly placeholder="Click a date on the calendar"></div>
              <div class="fg"><label>Full Name *</label><input type="text" id="f_name" name="fullname" placeholder="Juan dela Cruz" required></div>
              <div class="fg">
                <label>Phone Number *</label>
                <div style="display:flex;align-items:stretch;">
                  <span style="display:flex;align-items:center;padding:0 12px;background:#f1f5f9;border:1.5px solid #e2e8f0;border-right:none;border-radius:8px 0 0 8px;font-family:inherit;font-size:0.95rem;color:#475569;font-weight:600;white-space:nowrap;">+63</span>
                  <input type="tel" id="f_phone" name="phonenumber" placeholder="9XX XXXX XXX" maxlength="12" required
                    style="border-radius:0 8px 8px 0;flex:1;min-width:0;letter-spacing:0.05em;"
                    oninput="
                      let digits = this.value.replace(/\D/g, '').slice(0, 10);
                      let formatted = '';
                      if (digits.length <= 3) formatted = digits;
                      else if (digits.length <= 7) formatted = digits.slice(0,3) + ' ' + digits.slice(3);
                      else formatted = digits.slice(0,3) + ' ' + digits.slice(3,7) + ' ' + digits.slice(7);
                      this.value = formatted;
                    "
                    onblur="
                      let digits = this.value.replace(/\D/g, '');
                      if(digits.length>0&&digits.length!==10){this.style.borderColor='#ef4444';document.getElementById('phoneError').style.display='block';}
                      else{this.style.borderColor='';document.getElementById('phoneError').style.display='none';}
                    ">
                </div>
                <div id="phoneError" style="display:none;color:#ef4444;font-size:0.78rem;margin-top:4px;"><i class="fas fa-circle-exclamation"></i> Please enter exactly 10 digits (e.g. 9171234567)</div>
              </div>
              <div class="fg"><label>Email Address</label><input type="email" id="f_email" name="email" placeholder="your@email.com"></div>
              <div class="fg"><label>Purpose / Activity</label><input type="text" id="f_purpose" name="purpose" placeholder="e.g. Basketball practice"></div>
              
              <div class="fg">
                <label>Start Time</label>
                <select id="start_time" name="start_time" required>
                  <option value="">Select Start Time</option>
                </select>
              </div>

              <div class="fg">
                <label>Duration</label>
                <select id="duration" required>
                  <option value="">Select Duration</option>
                  <option value="1">1 Hour</option>
                  <option value="2">2 Hours</option>
                  <option value="3">3 Hours</option>
                </select>
              </div>

              <div class="fg">
                <label>End Time</label>
                <input type="text" id="end_time" name="end_time" readonly>
              </div>

            </div>
            <div class="form-footer">
              <button type="submit" class="submit-btn"><i class="fas fa-receipt"></i> Review Booking</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- ====== CONFIRM MODAL (review step) ====== -->
  <div id="confirmOverlay" class="confirm-overlay">
    <div class="confirm-shell">
      <div class="cf-banner">
        <div class="cf-banner-left">
          <div class="cf-banner-eyebrow">Review Before Submitting</div>
          <h2>Confirm Your Booking</h2>
          <div class="cf-banner-date" id="cf-date-label">—</div>
        </div>
        <div class="cf-banner-icon"><i class="fas fa-calendar-check"></i></div>
      </div>

      
      <div class="cf-cards">
        <div class="cf-card allbook">
          <div class="cf-card-head">
            <div class="ch-icon"><i class="fas fa-calendar-day"></i></div>
            <div><div class="ch-title">All Reservations</div><div class="ch-sub">Morning Bookings</div></div>
          </div>
          <div class="cf-card-body" id="cf-all-list">
            <div class="cf-empty"><i class="fas fa-calendar"></i>No bookings yet</div>
          </div>
        </div>
        <div class="cf-card newbook">
          <div class="cf-card-head"><div class="ch-icon"><i class="fas fa-star"></i></div><div><div class="ch-title">Your Booking</div><div class="ch-sub">New Reservation</div></div></div>
          <div class="cf-card-body">
            <div class="nb-detail-row"><div class="nb-icon-wrap"><i class="fas fa-user"></i></div><div><div class="nb-label">Full Name</div><div class="nb-value" id="cf-name">—</div></div></div>
            <div class="nb-detail-row"><div class="nb-icon-wrap"><i class="fas fa-phone"></i></div><div><div class="nb-label">Phone</div><div class="nb-value" id="cf-phone">—</div></div></div>
            <div class="nb-detail-row"><div class="nb-icon-wrap"><i class="fas fa-envelope"></i></div><div><div class="nb-label">Email</div><div class="nb-value" id="cf-email">—</div></div></div>
            <div class="nb-detail-row"><div class="nb-icon-wrap"><i class="fas fa-tag"></i></div><div><div class="nb-label">Purpose</div><div class="nb-value" id="cf-purpose">—</div></div></div>
            <div class="nb-detail-row"><div class="nb-icon-wrap"><i class="fas fa-clock"></i></div><div><div class="nb-label">Time Slot</div><div class="nb-value" id="cf-time">—</div></div></div>
            <div class="nb-detail-row"><div class="nb-icon-wrap"><i class="fas fa-hashtag"></i></div><div><div class="nb-label">Booking Code</div><div class="nb-value"><span class="booking-code-chip" id="cf-code">—</span></div></div></div>
          </div>
        </div>
      </div>

      <div class="cf-footer">
        <div class="cf-footer-note"><i class="fas fa-triangle-exclamation"></i> By confirming, your reservation will be submitted for approval.</div>
        <div class="cf-btns">
          <button class="btn-cancel" id="confirmNo"><i class="fas fa-arrow-left"></i> Go Back</button>
          <button class="btn-confirm" id="confirmYes"><i class="fas fa-receipt"></i> Generate Receipt</button>
        </div>
      </div>
    </div>
  </div>

  <!-- ====== RECEIPT MODAL ====== -->
  <div id="receiptOverlay" class="receipt-overlay">
    <div class="receipt-wrapper">
      <div class="receipt">
        <div class="receipt-header">
          <div class="receipt-logo"><i class="fas fa-basketball-ball"></i></div>
          <div class="receipt-org">Barangay Ermita</div>
          <div class="receipt-title">Court Reservation</div>
          <div class="receipt-subtitle">Official Booking Slip</div>
          <div class="receipt-status"><i class="fas fa-clock"></i> Pending Approval</div>
        </div>

        <div class="perf"></div>

        <div class="receipt-body">
          <div class="receipt-date-strip">
            <div class="rds-label">Reservation Date</div>
            <div class="rds-date" id="rcp-date">—</div>
          </div>

          <div class="perf"></div>

          <div class="receipt-section-label">Booker Information</div>
          <div class="receipt-row"><span class="rr-key"><i class="fas fa-user"></i>Name</span><span class="rr-val" id="rcp-name">—</span></div>
          <div class="receipt-row"><span class="rr-key"><i class="fas fa-phone"></i>Phone</span><span class="rr-val" id="rcp-phone">—</span></div>
          <div class="receipt-row"><span class="rr-key"><i class="fas fa-envelope"></i>Email</span><span class="rr-val" id="rcp-email">—</span></div>
          <div class="receipt-row"><span class="rr-key"><i class="fas fa-tag"></i>Purpose</span><span class="rr-val" id="rcp-purpose">—</span></div>

          <div class="perf" style="margin:14px 0;"></div>

          <div class="receipt-section-label">Schedule</div>
          <div class="receipt-row"><span class="rr-key"><i class="fas fa-hourglass-start"></i>Start</span><span class="rr-val" id="rcp-start">—</span></div>
          <div class="receipt-row"><span class="rr-key"><i class="fas fa-hourglass-end"></i>End</span><span class="rr-val" id="rcp-end">—</span></div>
          <div class="receipt-row"><span class="rr-key"><i class="fas fa-clock"></i>Duration</span><span class="rr-val" id="rcp-duration">—</span></div>

          <div class="perf" style="margin:14px 0;"></div>

          <div class="receipt-code-section">
            <div class="rcs-code" id="rcp-code">——————</div>
            <div class="rcs-hint">Present this code upon check-in</div>
          </div>

          <button class="receipt-copy-btn" id="rcpCopyBtn">
            <i class="fas fa-copy" id="rcpCopyIcon"></i>
            <span id="rcpCopyText">Copy Booking Code</span>
          </button>

          <div class="receipt-barcode">
            <div class="barcode-bars" id="barcodeEl"></div>
            <div class="barcode-num" id="barcodeNum">* 000000 *</div>
          </div>
        </div>

        <div class="receipt-footer">
          <div class="rf-text">
            <strong>Barangay Ermita Court</strong><br>
            This receipt is your booking confirmation.<br>
            Subject to approval by the barangay office.
          </div>
        </div>
      </div>

      <div class="receipt-tear-bottom"></div>

      <div class="receipt-actions">
        <div class="receipt-timer">
          </div>
          <div class="rt-text">
        <div class="receipt-action-btns">
          <button class="btn-back" id="receiptBack"><i class="fas fa-arrow-left"></i> Go Back</button>
          <button class="btn-submit" id="receiptSubmit"><i class="fas fa-check"></i> Confirm Now</button>
        </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Hidden real form -->
  <form action="booking_process.php" method="post" id="realSubmitForm" style="display:none;">
    <input type="hidden" name="date"         id="rs_date">
    <input type="hidden" name="fullname"     id="rs_name">
    <input type="hidden" name="email"        id="rs_email">
    <input type="hidden" name="phonenumber"  id="rs_phone">
    <input type="hidden" name="purpose"      id="rs_purpose">
    <input type="hidden" name="start_time"   id="rs_start">
    <input type="hidden" name="end_time"     id="rs_end">
    <input type="hidden" name="booking_code" id="rs_code">
  </form>

  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js"></script>
  <script>
  document.addEventListener('DOMContentLoaded', function () {

    const bookingModal   = document.getElementById('bookingModal');
    const closeBooking   = document.getElementById('closeBooking');
    const modalDateLabel = document.getElementById('modalDateLabel');
    const displayDate    = document.getElementById('displayDate');
    const dbDate         = document.getElementById('dbDate');
    const amList         = document.getElementById('amList');
    const allCount       = document.getElementById('allCount');

    // ── Helper: converts "14:00:00" → "2:00 PM" ──
    function fmtTime(t) {
      let [h, m] = t.split(':').map(Number);
      let suffix = h >= 12 ? 'PM' : 'AM';
      return (h % 12 || 12) + ':' + String(m).padStart(2, '0') + ' ' + suffix;
    }

    const calendar = new FullCalendar.Calendar(document.getElementById('calendar'), {

      initialView: 'dayGridMonth',
      showNonCurrentDates: false,
      fixedWeekCount: false,

      headerToolbar: { 
        left:'prev,next today', 
        center:'title', 
        right:'' 
      },

      // ── Grey out past days and today only ──
      dayCellDidMount: function(info) {
        const today = new Date();
        today.setHours(0, 0, 0, 0);

        const minAllowedDate = new Date(today);
        minAllowedDate.setDate(today.getDate() + 1); // allow tomorrow onwards

        const cellDate = new Date(info.date);
        cellDate.setHours(0, 0, 0, 0);

        if (cellDate < minAllowedDate) {
          info.el.classList.add('fc-day-disabled');
        }
      },

      events: function(fetchInfo, successCallback) {
        fetch('get_booking_status.php?month=' + fetchInfo.startStr.slice(0,7))
          .then(res => res.json())
          .then(data => successCallback(data));
      },

      eventDidMount: function(info) {
        let cell = info.el.closest('.fc-daygrid-day');
        if (!cell) return;

        // Don't override disabled (past/today) cells with status colours
        if (cell.classList.contains('fc-day-disabled')) {
          info.el.style.display = "none";
          return;
        }

        let status = info.event.extendedProps.status;
        if (status === "full")       cell.style.backgroundColor = "#fecaca";
        else if (status === "half")  cell.style.backgroundColor = "#fde68a";
        else                         cell.style.backgroundColor = "#dcfce7";
        info.el.style.display = "none";
      },

      dateClick: function (info) {
        let clickedDate = info.dateStr;

        // ── Block past dates and today only ──
        const today = new Date();
        today.setHours(0, 0, 0, 0);

        const minAllowedDate = new Date(today);
        minAllowedDate.setDate(today.getDate() + 1); // allow tomorrow onwards

        const clicked = new Date(clickedDate + 'T00:00:00');

        if (clicked < minAllowedDate) {
          alert("❌ You cannot book a past date or today.\nPlease book from tomorrow onwards.");
          return;
        }

        let events = calendar.getEvents();
        let event = events.find(e => e.startStr === clickedDate);

        if (event && event.extendedProps.status === "full") {
          alert("This date is fully booked!");
          return;
        }

        dbDate.value = clickedDate;
        const d = new Date(clickedDate + 'T00:00:00');
        const label = d.toLocaleDateString('en-US', { weekday:'long', year:'numeric', month:'long', day:'numeric' });
        displayDate.value = label;
        modalDateLabel.textContent = label;

        fetch('fetch_bookings.php?date=' + clickedDate)
          .then(r => r.json())
          .then(rows => {

            amList.innerHTML = '';

            let amCount = 0;

            rows.sort((a, b) => {
              let aTime = a.time ? a.time.split(' - ')[0].trim().replace(':', '') : '0';
              let bTime = b.time ? b.time.split(' - ')[0].trim().replace(':', '') : '0';
              return parseInt(aTime) - parseInt(bTime);
            });

            rows.forEach(r => {
              let statusColor = r.status === "accepted"
                ? "color:green;font-weight:600;"
                : "color:orange;font-weight:600;";

              let timeDisplay = '';
              if (r.time && r.time.includes(' - ')) {
                let parts = r.time.split(' - ');
                timeDisplay = fmtTime(parts[0].trim()) + ' – ' + fmtTime(parts[1].trim());
              } else {
                timeDisplay = r.time ? fmtTime(r.time) : '';
              }

              let card = `
                <div class="res-card am">
                  <div class="rc-time">${timeDisplay}</div>
                  <div>${r.purpose}</div>
                  <div style="${statusColor}">${r.status.toUpperCase()}</div>
                </div>
              `;

              amList.innerHTML += card; amCount++;
            });

            if (!amCount) amList.innerHTML = '<div class="period-empty"><i class="fas fa-sun"></i>No AM bookings yet</div>';

            allCount.textContent = amCount + ' booked';
          });

        bookingModal.style.display = 'flex';
      }
    });

    calendar.render();
    closeBooking.onclick = () => bookingModal.style.display = 'none';
  });
  </script>

  <!-- Start/End time logic -->
  <script id="timeLogic">
  const startSelect = document.getElementById("start_time");
  const durationSelect = document.getElementById("duration");
  const endInput = document.getElementById("end_time");

  function generateStartTimes() {
    for (let hour = 8; hour <= 21; hour++) {
      let option = document.createElement("option");
      option.value = format24(hour);
      option.textContent = formatTime(hour);
      startSelect.appendChild(option);
    }
  }

  function formatTime(hour) {
    let suffix = hour >= 12 ? "PM" : "AM";
    let h = hour % 12 || 12;
    return `${h}:00 ${suffix}`;
  }

  function format24(hour) {
    return String(hour).padStart(2, '0') + ":00:00";
  }

  function calculateEndTime() {
    const start = startSelect.value;
    const duration = parseInt(durationSelect.value);
    if (!start || !duration) { endInput.value = ""; return; }
    let startHour = parseInt(start.split(":")[0]);
    let endHour = startHour + duration;
    if (endHour > 25) {
      alert("Booking cannot exceed 12:00 Midnight.");
      durationSelect.value = "";
      endInput.value = "";
      return;
    }
    endInput.value = String(endHour).padStart(2, '0') + ":00:00";
  }

  startSelect.addEventListener("change", calculateEndTime);
  durationSelect.addEventListener("change", calculateEndTime);
  generateStartTimes();
  </script>

  <script>
  document.querySelector("form").addEventListener("submit", function(e) {
    const phone = document.getElementById("f_phone").value.replace(/\D/g, '');
    if (phone.length !== 10) {
      e.preventDefault();
      document.getElementById("phoneError").style.display = "block";
      document.getElementById("f_phone").style.borderColor = "#ef4444";
      document.getElementById("f_phone").focus();
      return;
    }
    document.getElementById("f_phone").value = phone; // store raw 10 digits, +63 is prefix
    document.getElementById("fullnameHidden").value   = document.querySelector("input[name='fullname']").value;
    document.getElementById("emailHidden").value      = document.querySelector("input[name='email']").value;
    document.getElementById("phonenumberHidden").value= document.querySelector("input[name='phonenumber']").value;
    document.getElementById("dateHidden").value       = document.querySelector("input[name='date']").value;
    document.getElementById("startHidden").value      = document.querySelector("select[name='start_time']").value;
    document.getElementById("endHidden").value        = document.querySelector("input[name='end_time']").value;
    document.getElementById("purposeHidden").value    = document.querySelector("select[name='purpose']").value;
  });
  </script>

  </body>
  </html>