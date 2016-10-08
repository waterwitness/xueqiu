.class public Lcom/xueqiu/android/trade/model/SectionItem;
.super Ljava/lang/Object;
.source "SectionItem.java"


# static fields
.field public static final SECTIONTYPE_EMPTY:I = 0x0

.field public static final SECTIONTYPE_HS:I = 0x1

.field public static final SECTIONTYPE_ON_KEY_CLEAR:I = 0x4

.field public static final SECTIONTYPE_REPO:I = 0x3

.field public static final SECTIONTYPE_US:I = 0x2


# instance fields
.field private SectionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/xueqiu/android/trade/model/SectionItem;->SectionType:I

    .line 25
    return-void
.end method


# virtual methods
.method public getSectionType()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/xueqiu/android/trade/model/SectionItem;->SectionType:I

    return v0
.end method
