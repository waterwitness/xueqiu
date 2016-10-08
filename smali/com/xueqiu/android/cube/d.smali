.class Lcom/xueqiu/android/cube/d;
.super Ljava/lang/Object;
.source "CubeActivity.java"


# instance fields
.field a:Ljava/lang/Double;

.field rankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field rankParam:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
