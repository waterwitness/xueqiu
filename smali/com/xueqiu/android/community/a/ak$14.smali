.class final Lcom/xueqiu/android/community/a/ak$14;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->b(Landroid/widget/LinearLayout;Lcom/xueqiu/android/community/model/Card;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$14;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$14;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$14;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$14;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1207
    const-string v1, "--"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$14;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$14;->c:Lcom/xueqiu/android/community/a/ak;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1210
    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$14;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2103
    :goto_1
    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1212
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1213
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$14;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1214
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 1210
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
