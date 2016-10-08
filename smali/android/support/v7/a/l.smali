.class Landroid/support/v7/a/l;
.super Landroid/support/v7/a/j;
.source "ActionBarActivityDelegateJB.java"


# direct methods
.method constructor <init>(Landroid/support/v7/a/f;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/a/j;-><init>(Landroid/support/v7/a/f;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/a/a;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/support/v7/a/s;

    iget-object v1, p0, Landroid/support/v7/a/l;->a:Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/l;->a:Landroid/support/v7/a/f;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/a/s;-><init>(Landroid/app/Activity;Landroid/support/v7/a/b;)V

    return-object v0
.end method

.method final a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/support/v7/internal/view/c;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    return-object v0
.end method
