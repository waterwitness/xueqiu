.class public final Lcom/sleepycat/b/j/e;
.super Ljava/lang/Object;
.source "StatManager.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/sleepycat/b/j/d;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/j/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lcom/sleepycat/b/j/e;->c:Lcom/sleepycat/b/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    .line 158
    iput-object v0, p0, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    .line 159
    return-void
.end method
