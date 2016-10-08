.class public final enum Lcom/sleepycat/b/p/v;
.super Ljava/lang/Enum;
.source "LogVerifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/p/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/p/v;

.field public static final enum b:Lcom/sleepycat/b/p/v;

.field public static final enum c:Lcom/sleepycat/b/p/v;

.field public static final enum d:Lcom/sleepycat/b/p/v;

.field public static final enum e:Lcom/sleepycat/b/p/v;

.field public static final enum f:Lcom/sleepycat/b/p/v;

.field private static final synthetic g:[Lcom/sleepycat/b/p/v;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/sleepycat/b/p/v;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/p/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/p/v;->a:Lcom/sleepycat/b/p/v;

    new-instance v0, Lcom/sleepycat/b/p/v;

    const-string v1, "FIXED_HEADER"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/p/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/p/v;->b:Lcom/sleepycat/b/p/v;

    new-instance v0, Lcom/sleepycat/b/p/v;

    const-string v1, "VARIABLE_HEADER"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/p/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/p/v;->c:Lcom/sleepycat/b/p/v;

    new-instance v0, Lcom/sleepycat/b/p/v;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/p/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/p/v;->d:Lcom/sleepycat/b/p/v;

    new-instance v0, Lcom/sleepycat/b/p/v;

    const-string v1, "FILE_HEADER_ITEM"

    invoke-direct {v0, v1, v7}, Lcom/sleepycat/b/p/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/p/v;->e:Lcom/sleepycat/b/p/v;

    new-instance v0, Lcom/sleepycat/b/p/v;

    const-string v1, "INVALID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/p/v;->f:Lcom/sleepycat/b/p/v;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sleepycat/b/p/v;

    sget-object v1, Lcom/sleepycat/b/p/v;->a:Lcom/sleepycat/b/p/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/p/v;->b:Lcom/sleepycat/b/p/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/p/v;->c:Lcom/sleepycat/b/p/v;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/p/v;->d:Lcom/sleepycat/b/p/v;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/p/v;->e:Lcom/sleepycat/b/p/v;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/p/v;->f:Lcom/sleepycat/b/p/v;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/p/v;->g:[Lcom/sleepycat/b/p/v;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/p/v;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sleepycat/b/p/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/v;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/p/v;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sleepycat/b/p/v;->g:[Lcom/sleepycat/b/p/v;

    invoke-virtual {v0}, [Lcom/sleepycat/b/p/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/p/v;

    return-object v0
.end method
