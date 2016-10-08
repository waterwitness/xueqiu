.class final Lcom/xueqiu/android/common/widget/aj$2;
.super Lcom/xueqiu/android/base/b/p;
.source "ShareSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)Lcom/xueqiu/android/common/widget/aj;
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
.field final synthetic a:Lcom/xueqiu/android/common/widget/aj;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/aj;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/aj$2;->a:Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 266
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1274
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v0

    .line 1276
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj$2;->a:Lcom/xueqiu/android/common/widget/aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2094
    :goto_0
    iput-boolean v0, v1, Lcom/xueqiu/android/common/widget/aj;->e:Z

    .line 1277
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$2;->a:Lcom/xueqiu/android/common/widget/aj;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/aj;->a()V

    .line 266
    return-void

    .line 1276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
