.class final Landroid/support/v4/view/ae;
.super Landroid/support/v4/view/ad;
.source "LayoutInflaterCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/view/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/support/v4/view/aj;)V
    .locals 1

    .prologue
    .line 49
    .line 1024
    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/ai;

    invoke-direct {v0, p2}, Landroid/support/v4/view/ai;-><init>(Landroid/support/v4/view/aj;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 50
    return-void

    .line 1024
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
