.class public final Lcom/bairuitech/anychat/g;
.super Landroid/view/OrientationEventListener;
.source "AnyChatSensorHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 105
    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 3

    .prologue
    const/16 v2, 0x87

    const/16 v1, 0x2d

    .line 118
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 130
    :goto_0
    const/16 v1, 0x61

    invoke-static {v1, v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 131
    return-void

    .line 120
    :cond_0
    const/16 v0, 0x145

    if-gt p1, v0, :cond_1

    if-gt p1, v1, :cond_2

    .line 121
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 122
    :cond_2
    if-le p1, v1, :cond_3

    if-gt p1, v2, :cond_3

    .line 123
    const/4 v0, 0x4

    goto :goto_0

    .line 124
    :cond_3
    if-le p1, v2, :cond_4

    const/16 v0, 0xe1

    if-ge p1, v0, :cond_4

    .line 125
    const/4 v0, 0x6

    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method
