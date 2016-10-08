.class public interface abstract Lcom/pingan/main/IAVCallStatusListener;
.super Ljava/lang/Object;
.source "IAVCallStatusListener.java"


# static fields
.field public static final STATUS_AUTH_FAILED:I = 0x190

.field public static final STATUS_AUTH_SUCCESS:I = 0x1a4

.field public static final STATUS_CALL_AGENT_ALL_BUSY:I = 0xe

.field public static final STATUS_CALL_BUSY:I = 0xc

.field public static final STATUS_CALL_CONNECTED:I = 0x5

.field public static final STATUS_CALL_FAILED:I = 0x6

.field public static final STATUS_CALL_IDLE:I = 0x8

.field public static final STATUS_CALL_INCOMING:I = 0x7

.field public static final STATUS_CALL_NON_EXIST:I = 0xd

.field public static final STATUS_CALL_NOT_ONLINE:I = 0x13

.field public static final STATUS_CALL_REFUSED:I = 0xb

.field public static final STATUS_CALL_RINGING:I = 0x4

.field public static final STATUS_FUNC_EVENT:I = 0x3e7

.field public static final STATUS_HEADSET_CONNECTED:I = 0x10

.field public static final STATUS_HEADSET_NOT_CONNECTED:I = 0x11

.field public static final STATUS_NET_CONNECTED:I = 0x385

.field public static final STATUS_NET_DISCONNECTED:I = 0x386

.field public static final STATUS_NET_SIP:I = 0xf

.field public static final STATUS_NET_VIDEO:I = 0xa

.field public static final STATUS_NET_VOICE:I = 0x9

.field public static final STATUS_PERMISSION_ERROR:I = 0x14

.field public static final STATUS_SIP_MSG_RECE:I = 0x12

.field public static final STATUS_SIP_REG_FAILED:I = 0x2

.field public static final STATUS_SIP_REG_OK:I = 0x1

.field public static final STATUS_SIP_UN_REG_OK:I = 0x3


# virtual methods
.method public abstract outputAVCallStatus(ILjava/lang/Object;)V
.end method
