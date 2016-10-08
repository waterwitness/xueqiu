.class public final enum Lcom/sleepycat/b/w;
.super Ljava/lang/Enum;
.source "Durability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/w;

.field public static final enum b:Lcom/sleepycat/b/w;

.field public static final enum c:Lcom/sleepycat/b/w;

.field private static final synthetic d:[Lcom/sleepycat/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/sleepycat/b/w;

    const-string v1, "SYNC"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    .line 106
    new-instance v0, Lcom/sleepycat/b/w;

    const-string v1, "NO_SYNC"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    .line 118
    new-instance v0, Lcom/sleepycat/b/w;

    const-string v1, "WRITE_NO_SYNC"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/w;->c:Lcom/sleepycat/b/w;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/w;

    sget-object v1, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/w;->c:Lcom/sleepycat/b/w;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/w;->d:[Lcom/sleepycat/b/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/w;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/sleepycat/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/w;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/w;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sleepycat/b/w;->d:[Lcom/sleepycat/b/w;

    invoke-virtual {v0}, [Lcom/sleepycat/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/w;

    return-object v0
.end method
