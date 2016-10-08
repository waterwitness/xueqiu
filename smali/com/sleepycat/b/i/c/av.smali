.class public final Lcom/sleepycat/b/i/c/av;
.super Ljava/lang/Object;
.source "TextProtocol.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sleepycat/b/i/c/as;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sleepycat/b/i/c/as;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/sleepycat/b/i/c/av;->b:Ljava/lang/Class;

    .line 227
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    return-object v0
.end method
