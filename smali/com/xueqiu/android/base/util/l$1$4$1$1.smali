.class final Lcom/xueqiu/android/base/util/l$1$4$1$1;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l$1$4$1;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/base/util/l$1$4$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$1$4$1;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 112
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 113
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4$1;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget v2, v2, Lcom/xueqiu/android/base/util/l$1;->c:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2358
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ak;->a(ILjava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 114
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4$1;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;-><init>(Lcom/xueqiu/android/base/util/l$1$4$1$1;)V

    new-instance v2, Lcom/xueqiu/android/base/util/l$1$4$1$1$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/util/l$1$4$1$1$2;-><init>(Lcom/xueqiu/android/base/util/l$1$4$1$1;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 137
    return-void
.end method
