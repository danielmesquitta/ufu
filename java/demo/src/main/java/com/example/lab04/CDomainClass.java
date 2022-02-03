package com.example.lab04;

public class CDomainClass {
  private Long id;
  private String type;
  private String format;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getFormat() {
    return format;
  }

  public void setFormat(String format) {
    this.format = format;
  }

  @Override
  public String toString() {
    return "CDomainClass [id=" + id + ", type=" + type + ", format=" + format + ", toString()=" + super.toString()
        + "]";
  }
}