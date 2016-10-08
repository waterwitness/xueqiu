.class final Lcom/xueqiu/android/trade/d/a$6;
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
    .line 954
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$6;->c:Lcom/xueqiu/android/trade/d/a;

    iput-object p2, p0, Lcom/xueqiu/android/trade/d/a$6;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/xueqiu/android/trade/d/a$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 958
    packed-switch p2, :pswitch_data_0

    .line 967
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$6;->c:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 967
    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    .line 970
    :goto_0
    return-void

    .line 960
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$6;->c:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 960
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->H_()V

    .line 961
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$6;->c:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$6;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$6;->c:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 964
    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 958
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
