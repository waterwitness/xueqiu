.class public Landroid/support/v7/internal/view/b;
.super Landroid/support/v7/c/a;
.source "ActionModeWrapper.java"


# instance fields
.field final a:Landroid/view/MenuInflater;

.field final b:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/c/a;-><init>()V

    .line 35
    iput-object p2, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;

    .line 36
    new-instance v0, Landroid/support/v7/internal/view/d;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/b;->a:Landroid/view/MenuInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 67
    return-void
.end method
