SRC=src
USERCSS=iitm_bs_dashboard_blue.user.css
METAFILE=metadata
CSS=common.css my_current_courses.css student_courses.css calender.css exam_cities_and_hall_ticket.css submitted_forms_and_receipt.css certificates_and_documents.css

$(USERCSS): $(SRC)/*
	cat $(SRC)/$(METAFILE) > $(USERCSS)
	for stylesheet in $(CSS); \
	do \
		echo -e "\n" >> $(USERCSS); \
		cat $(SRC)/$${stylesheet} >> $(USERCSS); \
	done

clean:
	rm $(USERCSS)
