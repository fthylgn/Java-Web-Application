package com.example.demo.model;



public enum Status {
 
	OPEN("open"),
    IN_WORK("in work"),
    FINISHED("finished");

    private final String displayName;

    Status(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayName() {
        return displayName;
    }
}