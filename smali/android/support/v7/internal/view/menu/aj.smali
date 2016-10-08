.class public final Landroid/support/v7/internal/view/menu/aj;
.super Landroid/support/v7/internal/view/menu/p;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field l:Landroid/support/v7/internal/view/menu/p;

.field private m:Landroid/support/v7/internal/view/menu/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/support/v7/internal/view/menu/t;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/p;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    .line 41
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/aj;->m:Landroid/support/v7/internal/view/menu/t;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->m:Landroid/support/v7/internal/view/menu/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->m:Landroid/support/v7/internal/view/menu/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/t;->getItemId()I

    move-result v0

    .line 139
    :goto_0
    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_1
    return-object v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v7/internal/view/menu/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/internal/view/menu/q;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/q;)V

    .line 75
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/p;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/p;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/t;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/t;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->b()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/t;)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/p;->b(Landroid/support/v7/internal/view/menu/t;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->c()Z

    move-result v0

    return v0
.end method

.method public final clearHeader()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->m:Landroid/support/v7/internal/view/menu/t;

    return-object v0
.end method

.method public final j()Landroid/support/v7/internal/view/menu/p;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 103
    .line 1773
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/p;->a:Landroid/content/Context;

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/p;

    .line 104
    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/p;

    .line 99
    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 113
    .line 2773
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/p;->a:Landroid/content/Context;

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/p;

    .line 114
    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/p;

    .line 109
    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 3239
    invoke-super {p0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/p;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 119
    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->m:Landroid/support/v7/internal/view/menu/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/t;->setIcon(I)Landroid/view/MenuItem;

    .line 94
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->m:Landroid/support/v7/internal/view/menu/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/t;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 89
    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aj;->l:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/p;->setQwertyMode(Z)V

    .line 47
    return-void
.end method
