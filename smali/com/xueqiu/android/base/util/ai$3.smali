.class final Lcom/xueqiu/android/base/util/ai$3;
.super Landroid/text/style/ClickableSpan;
.source "SNBHtmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ai;->a(Landroid/text/SpannableStringBuilder;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/text/style/ImageSpan;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/text/style/ImageSpan;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ai$3;->a:Landroid/text/style/ImageSpan;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ai$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$3;->a:Landroid/text/style/ImageSpan;

    invoke-virtual {v0}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$3;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 494
    return-void
.end method
