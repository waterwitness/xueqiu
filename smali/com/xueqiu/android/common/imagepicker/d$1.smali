.class final Lcom/xueqiu/android/common/imagepicker/d$1;
.super Ljava/lang/Object;
.source "PickAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/imagepicker/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/imagepicker/c;

.field final synthetic b:Lcom/xueqiu/android/common/imagepicker/f;

.field final synthetic c:Lcom/xueqiu/android/common/imagepicker/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/imagepicker/d;Lcom/xueqiu/android/common/imagepicker/c;Lcom/xueqiu/android/common/imagepicker/f;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    iput-object p2, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->a:Lcom/xueqiu/android/common/imagepicker/c;

    iput-object p3, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->b:Lcom/xueqiu/android/common/imagepicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->a(Lcom/xueqiu/android/common/imagepicker/d;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->a:Lcom/xueqiu/android/common/imagepicker/c;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->b:Lcom/xueqiu/android/common/imagepicker/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/f;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->a(Lcom/xueqiu/android/common/imagepicker/d;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->a:Lcom/xueqiu/android/common/imagepicker/c;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->c(Lcom/xueqiu/android/common/imagepicker/d;)Lcom/xueqiu/android/common/imagepicker/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->c(Lcom/xueqiu/android/common/imagepicker/d;)Lcom/xueqiu/android/common/imagepicker/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->b:Lcom/xueqiu/android/common/imagepicker/f;

    iget-object v1, v1, Lcom/xueqiu/android/common/imagepicker/f;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    invoke-interface {v0}, Lcom/xueqiu/android/common/imagepicker/e;->a()V

    .line 124
    :cond_1
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->a(Lcom/xueqiu/android/common/imagepicker/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v1}, Lcom/xueqiu/android/common/imagepicker/d;->b(Lcom/xueqiu/android/common/imagepicker/d;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->b:Lcom/xueqiu/android/common/imagepicker/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/f;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->a(Lcom/xueqiu/android/common/imagepicker/d;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->a:Lcom/xueqiu/android/common/imagepicker/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->b:Lcom/xueqiu/android/common/imagepicker/f;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/f;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->c(Lcom/xueqiu/android/common/imagepicker/d;)Lcom/xueqiu/android/common/imagepicker/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d$1;->c:Lcom/xueqiu/android/common/imagepicker/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/d;->c(Lcom/xueqiu/android/common/imagepicker/d;)Lcom/xueqiu/android/common/imagepicker/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/common/imagepicker/e;->b()V

    goto :goto_0
.end method
