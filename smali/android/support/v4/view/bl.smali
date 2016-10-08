.class Landroid/support/v4/view/bl;
.super Landroid/support/v4/view/bk;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1072
    invoke-direct {p0}, Landroid/support/v4/view/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1075
    .line 2023
    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 1075
    return v0
.end method
