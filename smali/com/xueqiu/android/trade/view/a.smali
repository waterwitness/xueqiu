.class public final Lcom/xueqiu/android/trade/view/a;
.super Ljava/lang/Object;
.source "BrokerListDialog.java"


# instance fields
.field a:Lcom/xueqiu/android/trade/model/TradeAccount;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/xueqiu/android/trade/view/b;

.field public d:Lcom/xueqiu/android/common/widget/f;

.field private final e:Lcom/xueqiu/android/common/b;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Lcom/xueqiu/android/trade/view/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/b;",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;",
            "Lcom/xueqiu/android/trade/view/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/trade/view/a;->e:Lcom/xueqiu/android/common/b;

    .line 27
    iput-object p2, p0, Lcom/xueqiu/android/trade/view/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 28
    iput-object p3, p0, Lcom/xueqiu/android/trade/view/a;->b:Ljava/util/ArrayList;

    .line 29
    iput-object p4, p0, Lcom/xueqiu/android/trade/view/a;->c:Lcom/xueqiu/android/trade/view/b;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 33
    const-string v0, "\u9009\u62e9\u5238\u5546"

    .line 34
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/view/a;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v2, Lcom/xueqiu/android/trade/a/a;

    iget-object v3, p0, Lcom/xueqiu/android/trade/view/a;->e:Lcom/xueqiu/android/common/b;

    iget-object v4, p0, Lcom/xueqiu/android/trade/view/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/trade/a/a;-><init>(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 36
    iget-object v3, p0, Lcom/xueqiu/android/trade/view/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/trade/a/a;->a(Ljava/util/ArrayList;)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    iget-object v2, p0, Lcom/xueqiu/android/trade/view/a;->e:Lcom/xueqiu/android/common/b;

    new-instance v3, Lcom/xueqiu/android/trade/view/a$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/view/a$1;-><init>(Lcom/xueqiu/android/trade/view/a;)V

    invoke-static {v2, v3}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/view/View;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/view/a;->d:Lcom/xueqiu/android/common/widget/f;

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/a;->d:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 47
    new-instance v0, Lcom/xueqiu/android/trade/view/a$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/view/a$2;-><init>(Lcom/xueqiu/android/trade/view/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    return-void
.end method
