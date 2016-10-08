.class final Lcom/xueqiu/android/stock/a/e$1;
.super Ljava/lang/Object;
.source "F10PageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/F10Table;

.field final synthetic b:Lcom/xueqiu/android/stock/a/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/e;Lcom/xueqiu/android/stock/model/F10Table;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/e$1;->b:Lcom/xueqiu/android/stock/a/e;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/e$1;->a:Lcom/xueqiu/android/stock/model/F10Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/e$1;->a:Lcom/xueqiu/android/stock/model/F10Table;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getLink()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/e$1;->b:Lcom/xueqiu/android/stock/a/e;

    iget-object v1, v1, Lcom/xueqiu/android/stock/a/e;->h:Lcom/xueqiu/android/stock/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/d;->a(Lcom/xueqiu/android/stock/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 89
    return-void
.end method
