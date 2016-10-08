.class public final Landroid/support/v7/a/t;
.super Landroid/support/v7/a/s;
.source "ActionBarImplJBMR2.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/a/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/s;-><init>(Landroid/app/Activity;Landroid/support/v7/a/b;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v7/a/t;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 35
    return-void
.end method
