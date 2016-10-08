.class Landroid/support/v4/view/ac;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"

# interfaces
.implements Landroid/support/v4/view/ab;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/support/v4/view/aj;)V
    .locals 1

    .prologue
    .line 35
    .line 1045
    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0, p2}, Landroid/support/v4/view/ag;-><init>(Landroid/support/v4/view/aj;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 36
    return-void

    .line 1045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
