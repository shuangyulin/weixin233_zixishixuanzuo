package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 座位
 *
 * @author 
 * @email
 */
@TableName("zuowei")
public class ZuoweiEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public ZuoweiEntity() {

	}

	public ZuoweiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 座位名称
     */
    @TableField(value = "zuowei_name")

    private String zuoweiName;


    /**
     * 座位照片
     */
    @TableField(value = "zuowei_photo")

    private String zuoweiPhoto;


    /**
     * 座位类型
     */
    @TableField(value = "zuowei_types")

    private Integer zuoweiTypes;


    /**
     * 开始时间
     */
    @TableField(value = "zuowei_shijian")

    private String zuoweiShijian;


    /**
     * 现价
     */
    @TableField(value = "zuowei_new_money")

    private Double zuoweiNewMoney;


    /**
     * 座位
     */
    @TableField(value = "zuowei_number")

    private Integer zuoweiNumber;


    /**
     * 点击次数
     */
    @TableField(value = "zuowei_clicknum")

    private Integer zuoweiClicknum;


    /**
     * 逻辑删除
     */
    @TableField(value = "zuowei_delete")

    private Integer zuoweiDelete;


    /**
     * 座位简介
     */
    @TableField(value = "zuowei_content")

    private String zuoweiContent;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：座位名称
	 */
    public String getZuoweiName() {
        return zuoweiName;
    }
    /**
	 * 获取：座位名称
	 */

    public void setZuoweiName(String zuoweiName) {
        this.zuoweiName = zuoweiName;
    }
    /**
	 * 设置：座位照片
	 */
    public String getZuoweiPhoto() {
        return zuoweiPhoto;
    }
    /**
	 * 获取：座位照片
	 */

    public void setZuoweiPhoto(String zuoweiPhoto) {
        this.zuoweiPhoto = zuoweiPhoto;
    }
    /**
	 * 设置：座位类型
	 */
    public Integer getZuoweiTypes() {
        return zuoweiTypes;
    }
    /**
	 * 获取：座位类型
	 */

    public void setZuoweiTypes(Integer zuoweiTypes) {
        this.zuoweiTypes = zuoweiTypes;
    }
    /**
	 * 设置：开始时间
	 */
    public String getZuoweiShijian() {
        return zuoweiShijian;
    }
    /**
	 * 获取：开始时间
	 */

    public void setZuoweiShijian(String zuoweiShijian) {
        this.zuoweiShijian = zuoweiShijian;
    }
    /**
	 * 设置：现价
	 */
    public Double getZuoweiNewMoney() {
        return zuoweiNewMoney;
    }
    /**
	 * 获取：现价
	 */

    public void setZuoweiNewMoney(Double zuoweiNewMoney) {
        this.zuoweiNewMoney = zuoweiNewMoney;
    }
    /**
	 * 设置：座位
	 */
    public Integer getZuoweiNumber() {
        return zuoweiNumber;
    }
    /**
	 * 获取：座位
	 */

    public void setZuoweiNumber(Integer zuoweiNumber) {
        this.zuoweiNumber = zuoweiNumber;
    }
    /**
	 * 设置：点击次数
	 */
    public Integer getZuoweiClicknum() {
        return zuoweiClicknum;
    }
    /**
	 * 获取：点击次数
	 */

    public void setZuoweiClicknum(Integer zuoweiClicknum) {
        this.zuoweiClicknum = zuoweiClicknum;
    }
    /**
	 * 设置：逻辑删除
	 */
    public Integer getZuoweiDelete() {
        return zuoweiDelete;
    }
    /**
	 * 获取：逻辑删除
	 */

    public void setZuoweiDelete(Integer zuoweiDelete) {
        this.zuoweiDelete = zuoweiDelete;
    }
    /**
	 * 设置：座位简介
	 */
    public String getZuoweiContent() {
        return zuoweiContent;
    }
    /**
	 * 获取：座位简介
	 */

    public void setZuoweiContent(String zuoweiContent) {
        this.zuoweiContent = zuoweiContent;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Zuowei{" +
            "id=" + id +
            ", zuoweiName=" + zuoweiName +
            ", zuoweiPhoto=" + zuoweiPhoto +
            ", zuoweiTypes=" + zuoweiTypes +
            ", zuoweiShijian=" + zuoweiShijian +
            ", zuoweiNewMoney=" + zuoweiNewMoney +
            ", zuoweiNumber=" + zuoweiNumber +
            ", zuoweiClicknum=" + zuoweiClicknum +
            ", zuoweiDelete=" + zuoweiDelete +
            ", zuoweiContent=" + zuoweiContent +
            ", createTime=" + createTime +
        "}";
    }
}
