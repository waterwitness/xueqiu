.class public final enum Lcom/snowballfinance/message/io/c/k;
.super Ljava/lang/Enum;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/message/io/c/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snowballfinance/message/io/c/k;

.field public static final enum b:Lcom/snowballfinance/message/io/c/k;

.field private static final synthetic c:[Lcom/snowballfinance/message/io/c/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/snowballfinance/message/io/c/k;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/message/io/c/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/message/io/c/k;->a:Lcom/snowballfinance/message/io/c/k;

    new-instance v0, Lcom/snowballfinance/message/io/c/k;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/message/io/c/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/message/io/c/k;->b:Lcom/snowballfinance/message/io/c/k;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snowballfinance/message/io/c/k;

    sget-object v1, Lcom/snowballfinance/message/io/c/k;->a:Lcom/snowballfinance/message/io/c/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowballfinance/message/io/c/k;->b:Lcom/snowballfinance/message/io/c/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snowballfinance/message/io/c/k;->c:[Lcom/snowballfinance/message/io/c/k;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/message/io/c/k;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/snowballfinance/message/io/c/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/message/io/c/k;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/message/io/c/k;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/snowballfinance/message/io/c/k;->c:[Lcom/snowballfinance/message/io/c/k;

    invoke-virtual {v0}, [Lcom/snowballfinance/message/io/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/message/io/c/k;

    return-object v0
.end method
