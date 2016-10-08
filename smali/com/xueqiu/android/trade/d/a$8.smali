.class final Lcom/xueqiu/android/trade/d/a$8;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$8;->c:Lcom/xueqiu/android/trade/d/a;

    iput-object p2, p0, Lcom/xueqiu/android/trade/d/a$8;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/xueqiu/android/trade/d/a$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1001
    packed-switch p2, :pswitch_data_0

    .line 1010
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$8;->c:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1010
    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    .line 1013
    :goto_0
    return-void

    .line 1003
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$8;->c:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1003
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->H_()V

    .line 1004
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$8;->c:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$8;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$8;->b:Ljava/lang/String;

    .line 5024
    new-instance v3, Lcom/xueqiu/android/trade/d/a$9;

    iget-object v4, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    invoke-direct {v3, v0, v4}, Lcom/xueqiu/android/trade/d/a$9;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V

    .line 5036
    iget-object v4, v0, Lcom/xueqiu/android/trade/d/a;->h:Lcom/xueqiu/android/base/b/ai;

    .line 5653
    iget-object v4, v4, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v4, v2, v1, v3}, Lcom/xueqiu/android/base/b/am;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    .line 5037
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/base/b/x;)V

    goto :goto_0

    .line 1007
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$8;->c:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1007
    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
