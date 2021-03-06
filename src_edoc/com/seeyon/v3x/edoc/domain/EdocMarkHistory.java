package com.seeyon.v3x.edoc.domain;

import java.io.Serializable;
import java.util.Date;

import com.seeyon.v3x.common.domain.BaseModel;


/**
 * EdocMarkHistory generated by MyEclipse - Hibernate Tools
 */
public class EdocMarkHistory extends BaseModel implements Serializable {
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	// Fields
    private EdocMarkDefinition edocMarkDefinition;
	private Long edocId;
	private String docMark;
	private Long createUserId;
	private Date createTime;
	private Long lastUserId;
	private Date completeTime;
	
	private int markNum=1;
	
	public void setMarkNum(int markNum)
	{
		this.markNum=markNum;
	}
	public int getMarkNum()
	{
		return this.markNum;
	}

    // Constructors

    /** default constructor */
    public EdocMarkHistory() {
    }	
   
    // Property accessors   

    public EdocMarkDefinition getEdocMarkDefinition() {
        return this.edocMarkDefinition;
    }
    
    public void setEdocMarkDefinition(EdocMarkDefinition edocMarkDefinition) {
        this.edocMarkDefinition = edocMarkDefinition;
    }

    public Long getEdocId() {
        return this.edocId;
    }
    
    public void setEdocId(Long edocId) {
        this.edocId = edocId;
    }

    public String getDocMark() {
        return this.docMark;
    }
    
    public void setDocMark(String docMark) {
        this.docMark = docMark;
    }

    public Long getCreateUserId() {
        return this.createUserId;
    }
    
    public void setCreateUserId(Long createUserId) {
        this.createUserId = createUserId;
    }

    public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Long getLastUserId() {
        return this.lastUserId;
    }
    
    public void setLastUserId(Long lastUserId) {
        this.lastUserId = lastUserId;
    }

    public Date getCompleteTime() {
        return this.completeTime;
    }
    
    public void setCompleteTime(Date completeTime) {
        this.completeTime = completeTime;
    }
   
}