SRC=src
USERCSS=iitm_bs_dashboard_blue.user.css
METAFILE=metadata
CSS=common.css my_current_courses.css

$(USERCSS): $(SRC)/*
	cat $(SRC)/$(METAFILE) > $(USERCSS)
	for stylesheet in $(CSS); \
	do \
		echo -e "\n" >> $(USERCSS); \
		cat $(SRC)/$${stylesheet} >> $(USERCSS); \
	done

clean:
	rm $(USERCSS)
