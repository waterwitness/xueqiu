.class final Lcom/xueqiu/android/view/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/xueqiu/android/view/wheel/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/view/wheel/WheelView;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/view/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/view/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Lcom/xueqiu/android/view/wheel/WheelView;Z)V

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 1287
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    return-void

    .line 1287
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0, p1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Lcom/xueqiu/android/view/wheel/WheelView;I)V

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->getHeight()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Lcom/xueqiu/android/view/wheel/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v1, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->b(Lcom/xueqiu/android/view/wheel/WheelView;I)V

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->b(Lcom/xueqiu/android/view/wheel/WheelView;)Lcom/xueqiu/android/view/wheel/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/c;->a()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v1}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Lcom/xueqiu/android/view/wheel/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    neg-int v0, v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/view/wheel/WheelView;->b(Lcom/xueqiu/android/view/wheel/WheelView;I)V

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->b(Lcom/xueqiu/android/view/wheel/WheelView;)Lcom/xueqiu/android/view/wheel/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/c;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->c(Lcom/xueqiu/android/view/wheel/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    .line 1296
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0, v2}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Lcom/xueqiu/android/view/wheel/WheelView;Z)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0, v2}, Lcom/xueqiu/android/view/wheel/WheelView;->b(Lcom/xueqiu/android/view/wheel/WheelView;I)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->invalidate()V

    .line 164
    return-void

    .line 1296
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Lcom/xueqiu/android/view/wheel/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->b(Lcom/xueqiu/android/view/wheel/WheelView;)Lcom/xueqiu/android/view/wheel/c;

    move-result-object v6

    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/WheelView$1;->a:Lcom/xueqiu/android/view/wheel/WheelView;

    invoke-static {v0}, Lcom/xueqiu/android/view/wheel/WheelView;->a(Lcom/xueqiu/android/view/wheel/WheelView;)I

    move-result v4

    .line 2110
    iget-object v0, v6, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2112
    iput v1, v6, Lcom/xueqiu/android/view/wheel/c;->e:I

    .line 2114
    iget-object v0, v6, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2115
    invoke-virtual {v6, v1}, Lcom/xueqiu/android/view/wheel/c;->a(I)V

    .line 2117
    invoke-virtual {v6}, Lcom/xueqiu/android/view/wheel/c;->d()V

    .line 170
    :cond_0
    return-void
.end method
