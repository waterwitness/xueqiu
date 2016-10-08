.class final Lcom/xueqiu/android/community/a/ak$10;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/widget/LinearLayout;Lcom/xueqiu/android/community/model/Card;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$10;->b:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$10;->b:Lcom/xueqiu/android/community/a/ak;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1031
    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$10;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$10;->b:Lcom/xueqiu/android/community/a/ak;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1032
    const v1, 0x7f070501

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 1034
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1035
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1036
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1037
    return-void
.end method
