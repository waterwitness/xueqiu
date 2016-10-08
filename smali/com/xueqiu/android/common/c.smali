.class public abstract Lcom/xueqiu/android/common/c;
.super Landroid/support/v4/a/i;
.source "BaseFragment.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/q;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/base/b/x;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lrx/d/c/j;

.field protected i:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/c;->a:Ljava/util/List;

    .line 37
    new-instance v0, Lrx/d/c/j;

    invoke-direct {v0}, Lrx/d/c/j;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/c;->b:Lrx/d/c/j;

    .line 270
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/a/a;->d(I)V

    .line 55
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->c(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/a/a;->d(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->b(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/MainActivity;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    .line 2809
    iget-boolean v1, v0, Lcom/xueqiu/android/common/MainActivity;->p:Z

    .line 66
    if-eqz v1, :cond_0

    .line 2820
    iput-boolean v5, v0, Lcom/xueqiu/android/common/MainActivity;->p:Z

    .line 2821
    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v2, [I

    const v3, 0x7f0100d6

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3066
    iget-object v2, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v2}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v2

    .line 2823
    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 4066
    iget-object v2, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v2}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v2

    .line 2824
    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/a/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 5066
    iget-object v1, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v1}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 2825
    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02005b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/a/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f040016

    const v1, 0x7f040015

    invoke-virtual {p0, p1, v0, v1}, Lcom/xueqiu/android/common/c;->a(Landroid/content/Intent;II)V

    .line 119
    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 128
    const v0, 0x7f040016

    const v1, 0x7f040015

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xueqiu/android/common/c;->a(Landroid/content/Intent;III)V

    .line 129
    return-void
.end method

.method public final a(Landroid/content/Intent;II)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/a/i;->a(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    .line 124
    return-void
.end method

.method public final a(Landroid/content/Intent;III)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/i;->a(Landroid/content/Intent;I)V

    .line 133
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    .line 134
    return-void
.end method

.method public final a(Lcom/xueqiu/android/base/b/x;)V
    .locals 1

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method

.method public final a(Lrx/j;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->b:Lrx/d/c/j;

    invoke-virtual {v0, p1}, Lrx/d/c/j;->a(Lrx/j;)V

    .line 200
    return-void
.end method

.method public final a_(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 210
    .line 8240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 210
    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 215
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/widget/ae;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public final c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    .line 5240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 81
    if-eqz v0, :cond_0

    .line 6240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 82
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/c;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/c;->a(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/support/v4/a/i;->o()V

    .line 2100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/d/a/b/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/n;->a(Landroid/content/Context;)Lcom/d/a/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/b/f;->a(Lcom/d/a/b/h;)V

    .line 48
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/v4/a/i;->p()V

    .line 7096
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public q()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/b/x;

    .line 8336
    iget-boolean v2, v0, Lcom/android/volley/n;->h:Z

    .line 239
    if-nez v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/b/ai;->a(Lcom/xueqiu/android/base/b/x;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->b:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 246
    invoke-static {}, Lcom/xueqiu/android/base/l;->a()Lcom/xueqiu/android/base/l;

    invoke-static {}, Lcom/xueqiu/android/base/l;->b()Lcom/xueqiu/android/base/m;

    .line 247
    invoke-super {p0}, Landroid/support/v4/a/i;->q()V

    .line 248
    return-void
.end method

.method public final v()Landroid/app/Application;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Landroid/support/v7/a/a;
    .locals 1

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/f;

    .line 7066
    iget-object v0, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Lcom/xueqiu/android/base/b/ai;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/xueqiu/android/common/c;->v()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 203
    .line 7240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 203
    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0702fb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/c;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/c;->a_(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public y_()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/c;->i:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final z_()Z
    .locals 1

    .prologue
    .line 267
    .line 9240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 267
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
