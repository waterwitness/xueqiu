.class final Landroid/support/v7/a/m;
.super Landroid/support/v7/a/l;
.source "ActionBarActivityDelegateJBMR2.java"


# direct methods
.method constructor <init>(Landroid/support/v7/a/f;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/a/l;-><init>(Landroid/support/v7/a/f;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/a/a;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/support/v7/a/t;

    iget-object v1, p0, Landroid/support/v7/a/m;->a:Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/m;->a:Landroid/support/v7/a/f;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/a/t;-><init>(Landroid/app/Activity;Landroid/support/v7/a/b;)V

    return-object v0
.end method
