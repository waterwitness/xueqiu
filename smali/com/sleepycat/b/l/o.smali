.class public final enum Lcom/sleepycat/b/l/o;
.super Ljava/lang/Enum;
.source "INKeyRep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/l/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/l/o;

.field public static final enum b:Lcom/sleepycat/b/l/o;

.field private static final synthetic c:[Lcom/sleepycat/b/l/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/sleepycat/b/l/o;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/l/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/l/o;->a:Lcom/sleepycat/b/l/o;

    new-instance v0, Lcom/sleepycat/b/l/o;

    const-string v1, "MAX_KEY_SIZE"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/l/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/l/o;->b:Lcom/sleepycat/b/l/o;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/l/o;

    sget-object v1, Lcom/sleepycat/b/l/o;->a:Lcom/sleepycat/b/l/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/l/o;->b:Lcom/sleepycat/b/l/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/b/l/o;->c:[Lcom/sleepycat/b/l/o;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/l/o;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sleepycat/b/l/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/o;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/l/o;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sleepycat/b/l/o;->c:[Lcom/sleepycat/b/l/o;

    invoke-virtual {v0}, [Lcom/sleepycat/b/l/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/l/o;

    return-object v0
.end method
