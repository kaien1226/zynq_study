/*
 * main.c
 *
 *  Created on: 2016年8月20日
 *      Author: hsp
 *  本文件实现SD写入一段字符串，然后从其中读出并打印到串口。
 *
 */

#include <string.h>
#include "platform.h"
#include "xparameters.h"

#include "xil_printf.h"
#include "ff.h"
#include "xdevcfg.h"

static FATFS fatfs;

int SD_Init()
{
    FRESULT rc;

    rc = f_mount(&fatfs,"",0);
    if(rc)
    {
        xil_printf("ERROR : f_mount returned %d\r\n",rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

int SD_Transfer_read(char *FileName,u32 DestinationAddress,u32 ByteLength)
{
    FIL fil;
    FRESULT rc;
    UINT br;

    rc = f_open(&fil,FileName,FA_READ);
    if(rc)
    {
        xil_printf("ERROR : f_open returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_lseek(&fil, 0);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_read(&fil, (void*)DestinationAddress,ByteLength,&br);
    if(rc)
    {
        xil_printf("ERROR : f_read returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_close(&fil);
    if(rc)
    {
        xil_printf(" ERROR : f_close returned %d\r\n", rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

int SD_Transfer_write(char *FileName,u32 SourceAddress,u32 ByteLength)
{
    FIL fil;
    FRESULT rc;
    UINT bw;

    rc = f_open(&fil,FileName,FA_CREATE_ALWAYS | FA_WRITE);
    if(rc)
    {
        xil_printf("ERROR : f_open returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_lseek(&fil, 0);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_write(&fil,(void*) SourceAddress,ByteLength,&bw);
    if(rc)
    {
        xil_printf("ERROR : f_write returned %d\r\n", rc);
        return XST_FAILURE;
    }
    rc = f_close(&fil);
    if(rc){
        xil_printf("ERROR : f_close returned %d\r\n",rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

char valueToHexCh(const int value)
{
  char result = '\0';
  if(value >= 0 && value <= 9){
    result = (char)(value + 48); //48为ascii编码的‘0’字符编码值
  }
  else if(value >= 10 && value <= 15){
    result = (char)(value - 10 + 65); //减去10则找出其在16进制的偏移量，65为ascii的'A'的字符编码值
  }
  else{
    ;
  }

  return result;
}

int strToHex(char *ch, char *hex)
{
  int high,low;
  int tmp = 0;
  if(ch == NULL || hex == NULL){
    return -1;
  }

  if(strlen(ch) == 0){
    return -2;
  }

  while(*ch){
    tmp = (int)*ch;
    high = tmp >> 4;
    low = tmp & 15;
    *hex++ = valueToHexCh(high); //先写高字节
    *hex++ = valueToHexCh(low); //其次写低字节
    ch++;
  }
  *hex = '\0';
  return 0;
}


//#define FILE "test.txt"
#define FILE "1.bin"

int main()
{
    init_platform();

    const char src_str[] = "hsp test sd card write and read!";
    //u32 len = strlen(src_str);
      u32 len = 320*160*3;

    //SD_Init();
    //SD_Transfer_write(FILE,(u32)src_str,(len+1000));//当直接指定len时没有写出，需要指定较大的长度才会写出，原因未知

    //char dest_str[153700];//len<=33
    u32 dest_str[320*160*3];
    SD_Init();
    SD_Transfer_read(FILE,(u32)dest_str,(len+1));
    //char hex[66];
    //char *p_hex = hex;
    //char *p_ch = dest_str;
    //strToHex(p_ch, p_hex);

    xil_printf("%s\r\n",dest_str);
    print("SD write and read over!\r\n");

    cleanup_platform();
    return 0;
}
