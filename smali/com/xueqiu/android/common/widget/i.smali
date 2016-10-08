.class public final Lcom/xueqiu/android/common/widget/i;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/i;->a:Ljava/util/Map;

    .line 262
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/i;->b:Landroid/widget/ArrayAdapter;

    .line 263
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/i;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/i;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/i;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/i;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 269
    return-object p0
.end method
