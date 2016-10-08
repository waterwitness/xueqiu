.class final Landroid/support/v4/widget/ag;
.super Landroid/support/v4/widget/af;
.source "ScrollerCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/support/v4/widget/af;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 256
    .line 1026
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    .line 256
    return v0
.end method
