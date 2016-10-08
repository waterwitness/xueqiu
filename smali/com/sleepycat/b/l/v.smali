.class public final enum Lcom/sleepycat/b/l/v;
.super Ljava/lang/Enum;
.source "INTargetRep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/l/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/l/v;

.field public static final enum b:Lcom/sleepycat/b/l/v;

.field public static final enum c:Lcom/sleepycat/b/l/v;

.field private static final synthetic d:[Lcom/sleepycat/b/l/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/sleepycat/b/l/v;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/l/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/l/v;->a:Lcom/sleepycat/b/l/v;

    new-instance v0, Lcom/sleepycat/b/l/v;

    const-string v1, "SPARSE"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/l/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/l/v;->b:Lcom/sleepycat/b/l/v;

    new-instance v0, Lcom/sleepycat/b/l/v;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/l/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/l/v;->c:Lcom/sleepycat/b/l/v;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/l/v;

    sget-object v1, Lcom/sleepycat/b/l/v;->a:Lcom/sleepycat/b/l/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/l/v;->b:Lcom/sleepycat/b/l/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/l/v;->c:Lcom/sleepycat/b/l/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/l/v;->d:[Lcom/sleepycat/b/l/v;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/l/v;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sleepycat/b/l/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/v;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/l/v;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sleepycat/b/l/v;->d:[Lcom/sleepycat/b/l/v;

    invoke-virtual {v0}, [Lcom/sleepycat/b/l/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/l/v;

    return-object v0
.end method
