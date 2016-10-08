.class final Lcom/xueqiu/android/stock/LHBActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "LHBActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/LHBActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/LHBActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/LHBActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/stock/LHBActivity$2;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 94
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/16 v0, 0xa

    const/4 v2, 0x0

    .line 91
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1099
    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 1100
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1101
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    .line 1102
    if-le v1, v0, :cond_2

    :goto_0
    move v1, v2

    .line 1105
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1106
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    iget-object v5, p0, Lcom/xueqiu/android/stock/LHBActivity$2;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v5}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1110
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity$2;->a:Lcom/xueqiu/android/stock/LHBActivity;

    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$2;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$2;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->e(Lcom/xueqiu/android/stock/LHBActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity$2;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/LHBActivity;->d(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$2;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->f(Lcom/xueqiu/android/stock/LHBActivity;)V

    .line 91
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
