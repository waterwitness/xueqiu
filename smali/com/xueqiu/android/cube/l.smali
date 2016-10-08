.class Lcom/xueqiu/android/cube/l;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeTopListActivity;

.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/xueqiu/android/cube/l;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/xueqiu/android/cube/l;->name:Ljava/lang/String;

    .line 501
    iput-object p3, p0, Lcom/xueqiu/android/cube/l;->value:Ljava/lang/String;

    .line 502
    return-void
.end method
