.class public Lcom/xueqiu/android/message/GroupCreateActivity;
.super Lcom/xueqiu/android/common/b;
.source "GroupCreateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f03016a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/GroupCreateActivity;->setContentView(I)V

    .line 22
    return-void
.end method
