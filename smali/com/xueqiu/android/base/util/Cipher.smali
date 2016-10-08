.class public Lcom/xueqiu/android/base/util/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    :try_start_0
    const-string v0, "snbcipher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_0
    return-void

    .line 11
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native decrypt([B[BII)I
.end method

.method public native encrypt([B[BII)I
.end method
