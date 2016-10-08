.class Landroid/support/v7/a/j;
.super Landroid/support/v7/a/g;
.source "ActionBarActivityDelegateICS.java"


# instance fields
.field d:Landroid/view/Menu;


# direct methods
.method constructor <init>(Landroid/support/v7/a/f;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/a/g;-><init>(Landroid/support/v7/a/f;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/a/a;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/support/v7/a/r;

    iget-object v1, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/a/r;-><init>(Landroid/app/Activity;Landroid/support/v7/a/b;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Landroid/support/v7/internal/view/b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/f;->a(I)V

    .line 111
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/a/j;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0}, Landroid/support/v7/a/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setUiOptions(II)V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/a/g;->a(Landroid/os/Bundle;)V

    .line 59
    iget-boolean v0, p0, Landroid/support/v7/a/j;->b:Z

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->requestWindowFeature(I)Z

    .line 64
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/a/j;->c:Z

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/support/v7/a/f;->requestWindowFeature(I)Z

    .line 83
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0}, Landroid/support/v7/a/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 1088
    new-instance v2, Landroid/support/v7/a/k;

    invoke-direct {v2, p0, v1}, Landroid/support/v7/a/k;-><init>(Landroid/support/v7/a/j;Landroid/view/Window$Callback;)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 85
    return-void
.end method

.method public final a(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/support/v7/a/j;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/a/j;->a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;

    .line 197
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/f;->a(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/f;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final a(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 142
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/j;->d:Landroid/view/Menu;

    if-nez v0, :cond_2

    .line 2034
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2035
    new-instance v0, Landroid/support/v7/internal/view/menu/ai;

    invoke-direct {v0, p2}, Landroid/support/v7/internal/view/menu/ai;-><init>(Landroid/view/Menu;)V

    move-object p2, v0

    .line 144
    :cond_1
    iput-object p2, p0, Landroid/support/v7/a/j;->d:Landroid/view/Menu;

    .line 146
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    iget-object v1, p0, Landroid/support/v7/a/j;->d:Landroid/view/Menu;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/a/f;->a(ILandroid/view/Menu;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/f;->a(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/f;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 153
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    iget-object v1, p0, Landroid/support/v7/a/j;->d:Landroid/view/Menu;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/a/f;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/a/f;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/support/v7/a/j;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/a/j;->a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;

    .line 222
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/a/j;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/f;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/j;->d:Landroid/view/Menu;

    .line 227
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method
