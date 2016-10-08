.class final Lcom/xueqiu/android/cube/b/b$1;
.super Ljava/lang/Object;
.source "IndustryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Industry;

.field final synthetic b:Lcom/xueqiu/android/cube/b/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/b;Lcom/xueqiu/android/cube/model/Industry;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/b$1;->b:Lcom/xueqiu/android/cube/b/b;

    iput-object p2, p0, Lcom/xueqiu/android/cube/b/b$1;->a:Lcom/xueqiu/android/cube/model/Industry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/b$1;->b:Lcom/xueqiu/android/cube/b/b;

    iget-object v0, v0, Lcom/xueqiu/android/cube/b/b;->b:Lcom/xueqiu/android/cube/b/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/a;->f()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/cube/CubeCardListActivity;

    const-string v2, "extra_topic"

    iget-object v3, p0, Lcom/xueqiu/android/cube/b/b$1;->a:Lcom/xueqiu/android/cube/model/Industry;

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/b$1;->b:Lcom/xueqiu/android/cube/b/b;

    iget-object v1, v1, Lcom/xueqiu/android/cube/b/b;->b:Lcom/xueqiu/android/cube/b/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/b/a;->a(Landroid/content/Intent;)V

    .line 190
    return-void
.end method
