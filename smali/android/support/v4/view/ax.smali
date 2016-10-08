.class final Landroid/support/v4/view/ax;
.super Landroid/support/v4/view/aw;
.source "MotionEventCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/view/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 139
    .line 1026
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 139
    return v0
.end method
