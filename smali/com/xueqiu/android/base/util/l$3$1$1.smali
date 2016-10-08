.class final Lcom/xueqiu/android/base/util/l$3$1$1;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l$3$1;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/base/util/l$3$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$3$1;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/l$3$1$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 232
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$3$1$1;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2186
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/an;->c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 233
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/l$3$1$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/util/l$3$1$1$1;-><init>(Lcom/xueqiu/android/base/util/l$3$1$1;)V

    new-instance v2, Lcom/xueqiu/android/base/util/l$3$1$1$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/util/l$3$1$1$2;-><init>(Lcom/xueqiu/android/base/util/l$3$1$1;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 254
    return-void
.end method
