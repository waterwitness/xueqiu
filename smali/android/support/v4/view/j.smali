.class public abstract Landroid/support/v4/view/j;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/support/v4/view/k;

.field private c:Landroid/support/v4/view/l;


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/support/v4/view/k;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v4/view/j;->b:Landroid/support/v4/view/k;

    .line 227
    return-void
.end method

.method public final a(Landroid/support/v4/view/l;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/j;->c:Landroid/support/v4/view/l;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 237
    const-string v0, "ActionProvider(support)"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/j;->c:Landroid/support/v4/view/l;

    .line 242
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/view/j;->b:Landroid/support/v4/view/k;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v4/view/j;->b:Landroid/support/v4/view/k;

    invoke-interface {v0, p1}, Landroid/support/v4/view/k;->a(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public abstract b()Landroid/view/View;
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/support/v4/view/j;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
