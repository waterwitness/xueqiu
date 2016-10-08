.class public final Lcom/xueqiu/android/common/widget/m;
.super Ljava/lang/Object;
.source "IconizedMenu.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ae;
.implements Landroid/support/v7/internal/view/menu/q;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/support/v7/internal/view/menu/p;

.field public c:Landroid/support/v7/internal/view/menu/ab;

.field public d:Lcom/xueqiu/android/common/widget/n;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/m;->a:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/support/v7/internal/view/menu/p;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/m;->b:Landroid/support/v7/internal/view/menu/p;

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/m;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/q;)V

    .line 51
    iput-object p2, p0, Lcom/xueqiu/android/common/widget/m;->e:Landroid/view/View;

    .line 52
    new-instance v0, Landroid/support/v7/internal/view/menu/ab;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/m;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-direct {v0, p1, v1, p2}, Landroid/support/v7/internal/view/menu/ab;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/m;->c:Landroid/support/v7/internal/view/menu/ab;

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/m;->c:Landroid/support/v7/internal/view/menu/ab;

    .line 1229
    iput-object p0, v0, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/m;->c:Landroid/support/v7/internal/view/menu/ab;

    .line 2098
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/view/menu/ab;->d:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/p;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/p;Z)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/m;->d:Lcom/xueqiu/android/common/widget/n;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/m;->d:Lcom/xueqiu/android/common/widget/n;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/common/widget/n;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/p;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 145
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/p;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Landroid/support/v7/internal/view/menu/ab;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/m;->e:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Landroid/support/v7/internal/view/menu/ab;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ab;->a()V

    goto :goto_0
.end method
