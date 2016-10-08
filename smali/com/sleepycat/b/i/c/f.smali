.class public final Lcom/sleepycat/b/i/c/f;
.super Lcom/sleepycat/b/b/b;
.source "EnumConfigParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/sleepycat/b/b/b;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepycat/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 26
    iput-object p3, p0, Lcom/sleepycat/b/i/c/f;->f:Ljava/lang/Class;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sleepycat/b/i/c/f;->f:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sleepycat/b/i/c/f;->f:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 52
    :cond_0
    return-void
.end method
