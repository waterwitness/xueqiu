.class final Lcom/xueqiu/android/cube/k;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"


# instance fields
.field a:Lcom/xueqiu/android/cube/l;

.field b:Lcom/xueqiu/android/cube/l;

.field c:I

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 1

    .prologue
    .line 390
    iput-object p1, p0, Lcom/xueqiu/android/cube/k;->e:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/cube/k;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;B)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/k;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    return-void
.end method
