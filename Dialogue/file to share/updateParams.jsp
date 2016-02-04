<%@ include file="headerIncludes.jsp"%>
<script type="text/javascript"
	src="./resources/script/datetimepicker.js"></script>
	
	
	<script type="text/javascript"
	src="./resources/script/jquery-ui-timepicker-addon.js"></script>
	
	
<script type="text/javascript">
	function pop() {
		var screen = document.createElement('div');
		screen.id = 'screen';
		screen.className = 'screen';
		document.body.appendChild(screen);
		$("#screen").css({
			'width' : $(document).width(),
			'height' : $(document).height()
		});
		$('body').append($('#configDiv'));
	}
	
	/* var myRegExp =/^(?:(?:https?|ftp):\/\/)(?:\S+(?::\S*)?@)?(?:(?!10(?:\.\d{1,3}){3})(?!127(?:\.\d{1,3}){3})(?!169\.254(?:\.\d{1,3}){2})(?!192\.168(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]+-?)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]+-?)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/[^\s]*)?$/i;
	
	 */
	 function changeDate() {
			document.getElementById("Date_e_div0").setAttribute("hidden", "true");
			status_message.setAttribute("hidden", "true");
		}
	
	
</script>
<h2>
	<spring:message code="label.heading.updateParams" />
</h2>
<form:form action="successupdate" modelAttribute="httptoFtpForm"
	commandName="httptoFtpForm" method="post">
	<div class="row">

		<c:if test="${successMessage != null}">
			<div class="col-md-10">
				<div class="alert alert-success" id="status_message">
					<strong>${successMessage}</strong> <a href="viewResults"
						class="reportmgmt " title="Click to View Results">View Results</a>
				</div>
			</div>
		</c:if>
		<c:if test="${failMessage != null}">
			<div class="col-md-7">
				<div class="alert alert-danger" id="status_message">
					<strong>${failMessage}</strong>
				</div>
			</div>
		</c:if>
		<spring:bind path="httptoFtpForm.*">
			<c:if test="${status.errors.errorCount > 0}">
				<ul>
					<li>
						<div class="alert alert-danger">
							<c:forEach var="error" items="${status.errors.allErrors}">
								<spring:message message="${error}"></spring:message>
								<br />
							</c:forEach>
						</div>
					</li>
				</ul>
			</c:if>
		</spring:bind>
		<div class="screen" id="screen" style="display: none;"></div>

		<div id="spinner" class="spinner" style="display: none;">
			<img id="img-spinner" src="./resources/images/loading.gif"
				alt="Loading" style="width: 50px; height: 50px;" /> <strong>Executing...</strong>
		</div>


		<table cellpadding="0" cellspacing="0"
			class="table table-bordered table-striped">
			<tr>
				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.jobName.name" />&nbsp; <font style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>
				<td><form:input path="jobName" id="jobName"
						class="form-control" size="33" maxlength="500" autocomplete="off"
						onkeyup="keyEventFun(event);" /></td>
			</tr>

			<tr>
				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.httpUrl.name" />&nbsp; <font style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>
				<td><form:input path="httpUrl" id="httpUrl"
						class="form-control" size="33" maxlength="500" autocomplete="off"
						onkeyup="keyEventFun(event);" /></td>
			</tr>
			<tr>

				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.httpUrlUsername.name" />&nbsp; <font
							style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>
				<td><form:input path="httpUrlUsername" id="username"
						class="inptxt httpUrlUsername-input form-control" size="33"
						maxlength="255" autocomplete="off" onkeyup="keyEventFun(event);" /></td>


				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.httpUrlpwd.name" />&nbsp; <font style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>

				<td><form:password path="httpUrlpwd" id="httpUrlpwd"
						class="form-control" value="" size="33" maxlength="20"
						autocomplete="off" onkeyup="keyEventFun(event);" /></td>



				<td><a
					href="javascript:popupDialog('<c:url value="testHttp" />', 'configDiv')"
					class="default-btn pull-right" id="executebtnlink"
					title="Click to execute selected Brands"><spring:message
							code="label.button.testHttp" /></a></td>


			</tr>


			<tr>
				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.ftpUrl.name" />&nbsp; <font style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>
				<td><form:input path="ftpUrl" id="httpUrl"
						class="inptxt ftpUrl-input form-control" size="33" maxlength="500"
						autocomplete="off" onkeyup="keyEventFun(event);" /></td>
			</tr>
			<tr>

				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.ftpUrlUsername.name" />&nbsp; <font
							style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>

				<td><form:input path="ftpUrlUsername" id="ftpUrlUsername"
						class="inptxt username-input form-control" size="33"
						maxlength="255" autocomplete="off" onkeyup="keyEventFun(event);" /></td>


				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.ftpUrlpwd.name" />&nbsp; <font style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>

				<td><form:password path="ftpUrlpwd" id="ftpUrlpwd"
						class="form-control" value="" size="33" maxlength="20"
						autocomplete="off" onkeyup="keyEventFun(event);" /></td>

				<td><a
					href="javascript:popupDialog('<c:url value="/testFtp" />', 'configDiv')"
					class="default-btn pull-right" id="executebtnlink"
					title="Click to execute selected Brands"><spring:message
							code="label.button.testFtp" /></a></td>
			</tr>

			<tr>
				<td align="left"><label class="col-sm-4"><strong><spring:message
								code="label.schedule.name" />&nbsp; <font style="color: red"><spring:message
									code="label.symbol.asterik" /> </font> </strong> </label></td>
				<td>
					<div class="col-sm-8 FieldsHeight">
					
					
					
						<form:input path="schedule" id="schedule" name="schedule"						
							class="form-control  DateField Wid90"   onchange="changeDate()"/>
							
							
						<img src="./resources/images/calendar.jpg" width="20" height="35"
							onclick="javascript:NewCssCal('schedule','','','','','','future')"
							style="cursor: pointer" class="calendar-icon" title="Click to select ScheduleDate"/>
							
							
						<div hidden="true" class="col-md-12" id="Date_e_div0"
							style="width: 280px; float: left;">
							
							
							<div class="alert alert-danger" id="status_message">
								<span class="errormsgs" id="DateErr0"></span>
							</div>
							
							
							
						</div>
					</div>
				
				
				<%-- <form:input path="schedule" id="schedule"
						class="inptxt schedule-input form-control" size="33"
						maxlength="20" autocomplete="off" onkeyup="keyEventFun(event);" /> --%>
						
						
			</td>
			
			
			
			<!--  Working  here    -->
			<td>
					<div class="col-sm-8 FieldsHeight">
					
					
					
						
						
       
                <p><form:input id="timePicker" path="time" class="time" /></p>
           

            <script>
                $(function() {
                    $('#timePicker').timepicker();
                });
            </script>

           
       	
						
						
						
						<!-- <input type="time" name="bday"> -->
							
						<!-- <img src="./resources/images/calendar.jpg" width="20" height="35"
							onclick="javascript:NewCssCal('schedule','','','','','','future')"
							style="cursor: pointer" class="calendar-icon" title="Click to select ScheduleDate"/> -->
							
							
						<!-- <div hidden="true" class="col-md-12" id="Date_e_div0"
							style="width: 280px; float: left;"> -->
							
							
							<!-- <div class="alert alert-danger" id="status_message">
								<span class="errormsgs" id="DateErr0"></span>
							</div> -->
							
							
							
						</div>
					</div>
				
				
				
						
						
			</td>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			

			</tr>




		</table>


		<div class="Fieldsrow">
			<div class="col-sm-4">&nbsp;</div>
			<div class="col-sm-8 btns pad0">
				<a href="#"  onclick="  document.getElementById('httptoFtpForm').submit();" 
					
					class="default-btn pull-right" id="executebtnlink"
					title="Click to execute selected Brands"><spring:message
						code="label.button.submit" /></a>
			</div>
		</div>


		<div class="col-sm-12 pull-right Note">
			<strong><spring:message code="label.note.text" /></strong>
			<spring:message code="label.note.value1" />
			<font style="color: red"><spring:message
					code="label.symbol.asterik" /></font>
			<spring:message code="label.note.value2" />
		</div>



	</div>

</form:form>
</div>
<div class="back-popup-layer" id="bioDataLayer"></div>

<div class="popup-div adduser" id="bioData" style="display: none"></div>


