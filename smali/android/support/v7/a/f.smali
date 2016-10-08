.class public Landroid/support/v7/a/f;
.super Landroid/support/v4/a/k;
.source "ActionBarActivity.java"

# interfaces
.implements Landroid/support/v4/a/ci;
.implements Landroid/support/v7/a/b;


# instance fields
.field public i:Landroid/support/v7/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/a/k;-><init>()V

    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 382
    .line 1418
    invoke-static {p0}, Landroid/support/v4/a/ak;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_1

    .line 1435
    invoke-static {p0, v0}, Landroid/support/v4/a/ak;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    .line 385
    if-eqz v1, :cond_0

    .line 386
    invoke-static {p0}, Landroid/support/v4/a/ch;->a(Landroid/content/Context;)Landroid/support/v4/a/ch;

    move-result-object v0

    .line 2337
    invoke-virtual {v0, p0}, Landroid/support/v4/a/ch;->a(Landroid/app/Activity;)Landroid/support/v4/a/ch;

    .line 389
    invoke-virtual {v0}, Landroid/support/v4/a/ch;->a()V

    .line 392
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/a/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    const/4 v0, 0x1

    .line 405
    :goto_1
    return v0

    .line 396
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/a/f;->finish()V

    goto :goto_0

    .line 2451
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/a/ak;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method final a(I)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/support/v4/a/k;->setContentView(I)V

    .line 217
    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/support/v4/a/k;->setContentView(Landroid/view/View;)V

    .line 221
    return-void
.end method

.method final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/k;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    return-void
.end method

.method final a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/k;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/k;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/a/k;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    .line 1151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1155
    iget-object v0, v0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    invoke-virtual {v0, p2}, Landroid/support/v7/a/f;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    .line 1157
    :cond_0
    iget-object v0, v0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/f;

    .line 1240
    invoke-super {v0, p1, p2}, Landroid/support/v4/a/k;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/g;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 170
    invoke-super {p0}, Landroid/support/v4/a/k;->b()V

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->g()V

    .line 173
    return-void
.end method

.method final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/k;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void
.end method

.method public final b_()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 418
    invoke-static {p0}, Landroid/support/v4/a/ak;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->c()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0}, Landroid/support/v4/a/k;->onBackPressed()V

    .line 252
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/a/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->d()V

    .line 105
    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    .line 1047
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1048
    new-instance v0, Landroid/support/v7/a/m;

    invoke-direct {v0, p0}, Landroid/support/v7/a/m;-><init>(Landroid/support/v7/a/f;)V

    .line 96
    :goto_0
    iput-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Landroid/os/Bundle;)V

    .line 99
    return-void

    .line 1049
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 1050
    new-instance v0, Landroid/support/v7/a/l;

    invoke-direct {v0, p0}, Landroid/support/v7/a/l;-><init>(Landroid/support/v7/a/f;)V

    goto :goto_0

    .line 1051
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 1052
    new-instance v0, Landroid/support/v7/a/j;

    invoke-direct {v0, p0}, Landroid/support/v7/a/j;-><init>(Landroid/support/v7/a/f;)V

    goto :goto_0

    .line 1053
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 1054
    new-instance v0, Landroid/support/v7/a/i;

    invoke-direct {v0, p0}, Landroid/support/v7/a/i;-><init>(Landroid/support/v7/a/f;)V

    goto :goto_0

    .line 1056
    :cond_3
    new-instance v0, Landroid/support/v7/a/h;

    invoke-direct {v0, p0}, Landroid/support/v7/a/h;-><init>(Landroid/support/v7/a/f;)V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/g;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->b(I)Landroid/view/View;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/a/k;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/g;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 1066
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 135
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/a/a;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Landroid/support/v7/a/f;->d()Z

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/a/k;->onPostResume()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->f()V

    .line 117
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/a/g;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/a/k;->onStop()V

    .line 110
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->e()V

    .line 111
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/k;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 145
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(I)V

    .line 77
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/g;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method
