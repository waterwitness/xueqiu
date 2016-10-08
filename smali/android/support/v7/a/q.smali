.class final Landroid/support/v7/a/q;
.super Ljava/lang/Object;
.source "ActionBarImplHC.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/a/p;

.field private final b:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/a/p;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroid/support/v7/a/q;->b:Landroid/view/ActionMode$Callback;

    .line 77
    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/a/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/a/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/p;

    .line 1025
    iput-object p1, v1, Landroid/support/v7/a/p;->e:Landroid/view/ActionMode;

    .line 86
    iget-object v1, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/p;

    .line 1551
    iget-boolean v2, v1, Landroid/support/v7/a/n;->c:Z

    if-nez v2, :cond_0

    .line 1552
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/a/n;->c:Z

    .line 1553
    invoke-virtual {v1}, Landroid/support/v7/a/n;->f()V

    .line 88
    :cond_0
    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/a/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 106
    iget-object v0, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/p;

    .line 1566
    iget-boolean v1, v0, Landroid/support/v7/a/n;->c:Z

    if-eqz v1, :cond_0

    .line 1567
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/a/n;->c:Z

    .line 1568
    invoke-virtual {v0}, Landroid/support/v7/a/n;->f()V

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/p;

    .line 2025
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/a/p;->e:Landroid/view/ActionMode;

    .line 109
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/a/q;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
