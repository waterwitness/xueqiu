.class final Landroid/support/v7/a/p;
.super Landroid/support/v7/a/n;
.source "ActionBarImplHC.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ab;


# instance fields
.field final d:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

.field e:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/support/v7/a/f;Landroid/support/v7/a/b;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/n;-><init>(Landroid/support/v7/a/f;Landroid/support/v7/a/b;)V

    .line 35
    sget v0, Landroid/support/v7/b/f;->action_bar_root:I

    invoke-virtual {p1, v0}, Landroid/support/v7/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/a/p;->d:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 39
    iget-object v0, p0, Landroid/support/v7/a/p;->d:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/support/v7/a/p;->d:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/ab;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/support/v7/a/q;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/q;-><init>(Landroid/support/v7/a/p;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v7/a/n;->d()V

    .line 61
    iget-object v0, p0, Landroid/support/v7/a/p;->e:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/support/v7/a/p;->e:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 64
    :cond_0
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/a/p;->e:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/a/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
