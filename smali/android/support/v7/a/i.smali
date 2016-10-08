.class final Landroid/support/v7/a/i;
.super Landroid/support/v7/a/h;
.source "ActionBarActivityDelegateHC.java"


# direct methods
.method constructor <init>(Landroid/support/v7/a/f;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/a/h;-><init>(Landroid/support/v7/a/f;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/a/a;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/support/v7/a/i;->k()V

    .line 28
    new-instance v0, Landroid/support/v7/a/p;

    iget-object v1, p0, Landroid/support/v7/a/i;->a:Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/i;->a:Landroid/support/v7/a/f;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/a/p;-><init>(Landroid/support/v7/a/f;Landroid/support/v7/a/b;)V

    return-object v0
.end method
