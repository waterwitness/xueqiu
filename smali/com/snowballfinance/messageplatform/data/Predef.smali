.class public Lcom/snowballfinance/messageplatform/data/Predef;
.super Ljava/lang/Object;
.source "Predef.java"


# static fields
.field public static SYSTEM_USER_ID:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Predef;->SYSTEM_USER_ID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
