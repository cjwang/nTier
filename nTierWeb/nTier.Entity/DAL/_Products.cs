
/*
'===============================================================================
'  Generated From - CSharp_dOOdads_BusinessEntity.vbgen
' 
'  ** IMPORTANT  ** 
'  How to Generate your stored procedures:
' 
'  SQL        = SQL_StoredProcs.vbgen
'  ACCESS     = Access_StoredProcs.vbgen
'  ORACLE     = Oracle_StoredProcs.vbgen
'  FIREBIRD   = FirebirdStoredProcs.vbgen
'  POSTGRESQL = PostgreSQL_StoredProcs.vbgen
'
'  The supporting base class SqlClientEntity is in the Architecture directory in "dOOdads".
'  
'  This object is 'abstract' which means you need to inherit from it to be able
'  to instantiate it.  This is very easilly done. You can override properties and
'  methods in your derived class, this allows you to regenerate this class at any
'  time and not worry about overwriting custom code. 
'
'  NEVER EDIT THIS FILE.
'
'  public class YourObject :  _YourObject
'  {
'
'  }
'
'===============================================================================
*/

// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Specialized;

using MyGeneration.dOOdads;

namespace nTier.Entity
{
	public abstract class _Products : SqlClientEntity
	{
		public _Products()
		{
			this.QuerySource = "Products";
			this.MappingName = "Products";

		}	

		//=================================================================
		//  public Overrides void AddNew()
		//=================================================================
		//
		//=================================================================
		public override void AddNew()
		{
			base.AddNew();
			
		}
		
		
		public override void FlushData()
		{
			this._whereClause = null;
			this._aggregateClause = null;
			base.FlushData();
		}
		
		//=================================================================
		//  	public Function LoadAll() As Boolean
		//=================================================================
		//  Loads all of the records in the database, and sets the currentRow to the first row
		//=================================================================
		public bool LoadAll() 
		{
			ListDictionary parameters = null;
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ProductsLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ProductID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ProductID, ProductID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ProductsLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ProductID
			{
				get
				{
					return new SqlParameter("@ProductID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ProductName
			{
				get
				{
					return new SqlParameter("@ProductName", SqlDbType.NVarChar, 40);
				}
			}
			
			public static SqlParameter SupplierID
			{
				get
				{
					return new SqlParameter("@SupplierID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CategoryID
			{
				get
				{
					return new SqlParameter("@CategoryID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter QuantityPerUnit
			{
				get
				{
					return new SqlParameter("@QuantityPerUnit", SqlDbType.NVarChar, 20);
				}
			}
			
			public static SqlParameter UnitPrice
			{
				get
				{
					return new SqlParameter("@UnitPrice", SqlDbType.Money, 0);
				}
			}
			
			public static SqlParameter UnitsInStock
			{
				get
				{
					return new SqlParameter("@UnitsInStock", SqlDbType.SmallInt, 0);
				}
			}
			
			public static SqlParameter UnitsOnOrder
			{
				get
				{
					return new SqlParameter("@UnitsOnOrder", SqlDbType.SmallInt, 0);
				}
			}
			
			public static SqlParameter ReorderLevel
			{
				get
				{
					return new SqlParameter("@ReorderLevel", SqlDbType.SmallInt, 0);
				}
			}
			
			public static SqlParameter Discontinued
			{
				get
				{
					return new SqlParameter("@Discontinued", SqlDbType.Bit, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ProductID = "ProductID";
            public const string ProductName = "ProductName";
            public const string SupplierID = "SupplierID";
            public const string CategoryID = "CategoryID";
            public const string QuantityPerUnit = "QuantityPerUnit";
            public const string UnitPrice = "UnitPrice";
            public const string UnitsInStock = "UnitsInStock";
            public const string UnitsOnOrder = "UnitsOnOrder";
            public const string ReorderLevel = "ReorderLevel";
            public const string Discontinued = "Discontinued";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ProductID] = _Products.PropertyNames.ProductID;
					ht[ProductName] = _Products.PropertyNames.ProductName;
					ht[SupplierID] = _Products.PropertyNames.SupplierID;
					ht[CategoryID] = _Products.PropertyNames.CategoryID;
					ht[QuantityPerUnit] = _Products.PropertyNames.QuantityPerUnit;
					ht[UnitPrice] = _Products.PropertyNames.UnitPrice;
					ht[UnitsInStock] = _Products.PropertyNames.UnitsInStock;
					ht[UnitsOnOrder] = _Products.PropertyNames.UnitsOnOrder;
					ht[ReorderLevel] = _Products.PropertyNames.ReorderLevel;
					ht[Discontinued] = _Products.PropertyNames.Discontinued;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ProductID = "ProductID";
            public const string ProductName = "ProductName";
            public const string SupplierID = "SupplierID";
            public const string CategoryID = "CategoryID";
            public const string QuantityPerUnit = "QuantityPerUnit";
            public const string UnitPrice = "UnitPrice";
            public const string UnitsInStock = "UnitsInStock";
            public const string UnitsOnOrder = "UnitsOnOrder";
            public const string ReorderLevel = "ReorderLevel";
            public const string Discontinued = "Discontinued";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ProductID] = _Products.ColumnNames.ProductID;
					ht[ProductName] = _Products.ColumnNames.ProductName;
					ht[SupplierID] = _Products.ColumnNames.SupplierID;
					ht[CategoryID] = _Products.ColumnNames.CategoryID;
					ht[QuantityPerUnit] = _Products.ColumnNames.QuantityPerUnit;
					ht[UnitPrice] = _Products.ColumnNames.UnitPrice;
					ht[UnitsInStock] = _Products.ColumnNames.UnitsInStock;
					ht[UnitsOnOrder] = _Products.ColumnNames.UnitsOnOrder;
					ht[ReorderLevel] = _Products.ColumnNames.ReorderLevel;
					ht[Discontinued] = _Products.ColumnNames.Discontinued;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ProductID = "s_ProductID";
            public const string ProductName = "s_ProductName";
            public const string SupplierID = "s_SupplierID";
            public const string CategoryID = "s_CategoryID";
            public const string QuantityPerUnit = "s_QuantityPerUnit";
            public const string UnitPrice = "s_UnitPrice";
            public const string UnitsInStock = "s_UnitsInStock";
            public const string UnitsOnOrder = "s_UnitsOnOrder";
            public const string ReorderLevel = "s_ReorderLevel";
            public const string Discontinued = "s_Discontinued";

		}
		#endregion		
		
		#region Properties
	
		public virtual int? ProductID
	    {
			get
	        {
				return base.Getint(ColumnNames.ProductID);
			}
			set
	        {
				base.Setint(ColumnNames.ProductID, value);
			}
		}

		public virtual string ProductName
	    {
			get
	        {
				return base.Getstring(ColumnNames.ProductName);
			}
			set
	        {
				base.Setstring(ColumnNames.ProductName, value);
			}
		}

		public virtual int? SupplierID
	    {
			get
	        {
				return base.Getint(ColumnNames.SupplierID);
			}
			set
	        {
				base.Setint(ColumnNames.SupplierID, value);
			}
		}

		public virtual int? CategoryID
	    {
			get
	        {
				return base.Getint(ColumnNames.CategoryID);
			}
			set
	        {
				base.Setint(ColumnNames.CategoryID, value);
			}
		}

		public virtual string QuantityPerUnit
	    {
			get
	        {
				return base.Getstring(ColumnNames.QuantityPerUnit);
			}
			set
	        {
				base.Setstring(ColumnNames.QuantityPerUnit, value);
			}
		}

		public virtual decimal? UnitPrice
	    {
			get
	        {
				return base.Getdecimal(ColumnNames.UnitPrice);
			}
			set
	        {
				base.Setdecimal(ColumnNames.UnitPrice, value);
			}
		}

		public virtual short? UnitsInStock
	    {
			get
	        {
				return base.Getshort(ColumnNames.UnitsInStock);
			}
			set
	        {
				base.Setshort(ColumnNames.UnitsInStock, value);
			}
		}

		public virtual short? UnitsOnOrder
	    {
			get
	        {
				return base.Getshort(ColumnNames.UnitsOnOrder);
			}
			set
	        {
				base.Setshort(ColumnNames.UnitsOnOrder, value);
			}
		}

		public virtual short? ReorderLevel
	    {
			get
	        {
				return base.Getshort(ColumnNames.ReorderLevel);
			}
			set
	        {
				base.Setshort(ColumnNames.ReorderLevel, value);
			}
		}

		public virtual bool Discontinued
	    {
			get
	        {
				return base.Getbool(ColumnNames.Discontinued);
			}
			set
	        {
				base.Setbool(ColumnNames.Discontinued, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ProductID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ProductID) ? string.Empty : base.GetintAsString(ColumnNames.ProductID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ProductID);
				else
					this.ProductID = base.SetintAsString(ColumnNames.ProductID, value);
			}
		}

		public virtual string s_ProductName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ProductName) ? string.Empty : base.GetstringAsString(ColumnNames.ProductName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ProductName);
				else
					this.ProductName = base.SetstringAsString(ColumnNames.ProductName, value);
			}
		}

		public virtual string s_SupplierID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.SupplierID) ? string.Empty : base.GetintAsString(ColumnNames.SupplierID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.SupplierID);
				else
					this.SupplierID = base.SetintAsString(ColumnNames.SupplierID, value);
			}
		}

		public virtual string s_CategoryID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CategoryID) ? string.Empty : base.GetintAsString(ColumnNames.CategoryID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CategoryID);
				else
					this.CategoryID = base.SetintAsString(ColumnNames.CategoryID, value);
			}
		}

		public virtual string s_QuantityPerUnit
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.QuantityPerUnit) ? string.Empty : base.GetstringAsString(ColumnNames.QuantityPerUnit);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.QuantityPerUnit);
				else
					this.QuantityPerUnit = base.SetstringAsString(ColumnNames.QuantityPerUnit, value);
			}
		}

		public virtual string s_UnitPrice
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UnitPrice) ? string.Empty : base.GetdecimalAsString(ColumnNames.UnitPrice);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UnitPrice);
				else
					this.UnitPrice = base.SetdecimalAsString(ColumnNames.UnitPrice, value);
			}
		}

		public virtual string s_UnitsInStock
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UnitsInStock) ? string.Empty : base.GetshortAsString(ColumnNames.UnitsInStock);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UnitsInStock);
				else
					this.UnitsInStock = base.SetshortAsString(ColumnNames.UnitsInStock, value);
			}
		}

		public virtual string s_UnitsOnOrder
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UnitsOnOrder) ? string.Empty : base.GetshortAsString(ColumnNames.UnitsOnOrder);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UnitsOnOrder);
				else
					this.UnitsOnOrder = base.SetshortAsString(ColumnNames.UnitsOnOrder, value);
			}
		}

		public virtual string s_ReorderLevel
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ReorderLevel) ? string.Empty : base.GetshortAsString(ColumnNames.ReorderLevel);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ReorderLevel);
				else
					this.ReorderLevel = base.SetshortAsString(ColumnNames.ReorderLevel, value);
			}
		}

		public virtual string s_Discontinued
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Discontinued) ? string.Empty : base.GetboolAsString(ColumnNames.Discontinued);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Discontinued);
				else
					this.Discontinued = base.SetboolAsString(ColumnNames.Discontinued, value);
			}
		}


		#endregion		
	
		#region Where Clause
		public class WhereClause
		{
			public WhereClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffWhereParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffWhereParameter(this);
					}

					return _tearOff;
				}
			}

			#region WhereParameter TearOff's
			public class TearOffWhereParameter
			{
				public TearOffWhereParameter(WhereClause clause)
				{
					this._clause = clause;
				}
				
				
				public WhereParameter ProductID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ProductID, Parameters.ProductID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ProductName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ProductName, Parameters.ProductName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter SupplierID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.SupplierID, Parameters.SupplierID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CategoryID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CategoryID, Parameters.CategoryID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter QuantityPerUnit
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.QuantityPerUnit, Parameters.QuantityPerUnit);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UnitPrice
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UnitPrice, Parameters.UnitPrice);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UnitsInStock
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UnitsInStock, Parameters.UnitsInStock);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UnitsOnOrder
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UnitsOnOrder, Parameters.UnitsOnOrder);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ReorderLevel
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ReorderLevel, Parameters.ReorderLevel);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Discontinued
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Discontinued, Parameters.Discontinued);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ProductID
		    {
				get
		        {
					if(_ProductID_W == null)
	        	    {
						_ProductID_W = TearOff.ProductID;
					}
					return _ProductID_W;
				}
			}

			public WhereParameter ProductName
		    {
				get
		        {
					if(_ProductName_W == null)
	        	    {
						_ProductName_W = TearOff.ProductName;
					}
					return _ProductName_W;
				}
			}

			public WhereParameter SupplierID
		    {
				get
		        {
					if(_SupplierID_W == null)
	        	    {
						_SupplierID_W = TearOff.SupplierID;
					}
					return _SupplierID_W;
				}
			}

			public WhereParameter CategoryID
		    {
				get
		        {
					if(_CategoryID_W == null)
	        	    {
						_CategoryID_W = TearOff.CategoryID;
					}
					return _CategoryID_W;
				}
			}

			public WhereParameter QuantityPerUnit
		    {
				get
		        {
					if(_QuantityPerUnit_W == null)
	        	    {
						_QuantityPerUnit_W = TearOff.QuantityPerUnit;
					}
					return _QuantityPerUnit_W;
				}
			}

			public WhereParameter UnitPrice
		    {
				get
		        {
					if(_UnitPrice_W == null)
	        	    {
						_UnitPrice_W = TearOff.UnitPrice;
					}
					return _UnitPrice_W;
				}
			}

			public WhereParameter UnitsInStock
		    {
				get
		        {
					if(_UnitsInStock_W == null)
	        	    {
						_UnitsInStock_W = TearOff.UnitsInStock;
					}
					return _UnitsInStock_W;
				}
			}

			public WhereParameter UnitsOnOrder
		    {
				get
		        {
					if(_UnitsOnOrder_W == null)
	        	    {
						_UnitsOnOrder_W = TearOff.UnitsOnOrder;
					}
					return _UnitsOnOrder_W;
				}
			}

			public WhereParameter ReorderLevel
		    {
				get
		        {
					if(_ReorderLevel_W == null)
	        	    {
						_ReorderLevel_W = TearOff.ReorderLevel;
					}
					return _ReorderLevel_W;
				}
			}

			public WhereParameter Discontinued
		    {
				get
		        {
					if(_Discontinued_W == null)
	        	    {
						_Discontinued_W = TearOff.Discontinued;
					}
					return _Discontinued_W;
				}
			}

			private WhereParameter _ProductID_W = null;
			private WhereParameter _ProductName_W = null;
			private WhereParameter _SupplierID_W = null;
			private WhereParameter _CategoryID_W = null;
			private WhereParameter _QuantityPerUnit_W = null;
			private WhereParameter _UnitPrice_W = null;
			private WhereParameter _UnitsInStock_W = null;
			private WhereParameter _UnitsOnOrder_W = null;
			private WhereParameter _ReorderLevel_W = null;
			private WhereParameter _Discontinued_W = null;

			public void WhereClauseReset()
			{
				_ProductID_W = null;
				_ProductName_W = null;
				_SupplierID_W = null;
				_CategoryID_W = null;
				_QuantityPerUnit_W = null;
				_UnitPrice_W = null;
				_UnitsInStock_W = null;
				_UnitsOnOrder_W = null;
				_ReorderLevel_W = null;
				_Discontinued_W = null;

				this._entity.Query.FlushWhereParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffWhereParameter _tearOff;
			
		}
	
		public WhereClause Where
		{
			get
			{
				if(_whereClause == null)
				{
					_whereClause = new WhereClause(this);
				}
		
				return _whereClause;
			}
		}
		
		private WhereClause _whereClause = null;	
		#endregion
	
		#region Aggregate Clause
		public class AggregateClause
		{
			public AggregateClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffAggregateParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffAggregateParameter(this);
					}

					return _tearOff;
				}
			}

			#region AggregateParameter TearOff's
			public class TearOffAggregateParameter
			{
				public TearOffAggregateParameter(AggregateClause clause)
				{
					this._clause = clause;
				}
				
				
				public AggregateParameter ProductID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ProductID, Parameters.ProductID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ProductName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ProductName, Parameters.ProductName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter SupplierID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.SupplierID, Parameters.SupplierID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CategoryID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CategoryID, Parameters.CategoryID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter QuantityPerUnit
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.QuantityPerUnit, Parameters.QuantityPerUnit);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UnitPrice
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UnitPrice, Parameters.UnitPrice);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UnitsInStock
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UnitsInStock, Parameters.UnitsInStock);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UnitsOnOrder
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UnitsOnOrder, Parameters.UnitsOnOrder);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ReorderLevel
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ReorderLevel, Parameters.ReorderLevel);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Discontinued
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Discontinued, Parameters.Discontinued);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ProductID
		    {
				get
		        {
					if(_ProductID_W == null)
	        	    {
						_ProductID_W = TearOff.ProductID;
					}
					return _ProductID_W;
				}
			}

			public AggregateParameter ProductName
		    {
				get
		        {
					if(_ProductName_W == null)
	        	    {
						_ProductName_W = TearOff.ProductName;
					}
					return _ProductName_W;
				}
			}

			public AggregateParameter SupplierID
		    {
				get
		        {
					if(_SupplierID_W == null)
	        	    {
						_SupplierID_W = TearOff.SupplierID;
					}
					return _SupplierID_W;
				}
			}

			public AggregateParameter CategoryID
		    {
				get
		        {
					if(_CategoryID_W == null)
	        	    {
						_CategoryID_W = TearOff.CategoryID;
					}
					return _CategoryID_W;
				}
			}

			public AggregateParameter QuantityPerUnit
		    {
				get
		        {
					if(_QuantityPerUnit_W == null)
	        	    {
						_QuantityPerUnit_W = TearOff.QuantityPerUnit;
					}
					return _QuantityPerUnit_W;
				}
			}

			public AggregateParameter UnitPrice
		    {
				get
		        {
					if(_UnitPrice_W == null)
	        	    {
						_UnitPrice_W = TearOff.UnitPrice;
					}
					return _UnitPrice_W;
				}
			}

			public AggregateParameter UnitsInStock
		    {
				get
		        {
					if(_UnitsInStock_W == null)
	        	    {
						_UnitsInStock_W = TearOff.UnitsInStock;
					}
					return _UnitsInStock_W;
				}
			}

			public AggregateParameter UnitsOnOrder
		    {
				get
		        {
					if(_UnitsOnOrder_W == null)
	        	    {
						_UnitsOnOrder_W = TearOff.UnitsOnOrder;
					}
					return _UnitsOnOrder_W;
				}
			}

			public AggregateParameter ReorderLevel
		    {
				get
		        {
					if(_ReorderLevel_W == null)
	        	    {
						_ReorderLevel_W = TearOff.ReorderLevel;
					}
					return _ReorderLevel_W;
				}
			}

			public AggregateParameter Discontinued
		    {
				get
		        {
					if(_Discontinued_W == null)
	        	    {
						_Discontinued_W = TearOff.Discontinued;
					}
					return _Discontinued_W;
				}
			}

			private AggregateParameter _ProductID_W = null;
			private AggregateParameter _ProductName_W = null;
			private AggregateParameter _SupplierID_W = null;
			private AggregateParameter _CategoryID_W = null;
			private AggregateParameter _QuantityPerUnit_W = null;
			private AggregateParameter _UnitPrice_W = null;
			private AggregateParameter _UnitsInStock_W = null;
			private AggregateParameter _UnitsOnOrder_W = null;
			private AggregateParameter _ReorderLevel_W = null;
			private AggregateParameter _Discontinued_W = null;

			public void AggregateClauseReset()
			{
				_ProductID_W = null;
				_ProductName_W = null;
				_SupplierID_W = null;
				_CategoryID_W = null;
				_QuantityPerUnit_W = null;
				_UnitPrice_W = null;
				_UnitsInStock_W = null;
				_UnitsOnOrder_W = null;
				_ReorderLevel_W = null;
				_Discontinued_W = null;

				this._entity.Query.FlushAggregateParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffAggregateParameter _tearOff;
			
		}
	
		public AggregateClause Aggregate
		{
			get
			{
				if(_aggregateClause == null)
				{
					_aggregateClause = new AggregateClause(this);
				}
		
				return _aggregateClause;
			}
		}
		
		private AggregateClause _aggregateClause = null;	
		#endregion
	
		protected override IDbCommand GetInsertCommand() 
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ProductsInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.ProductID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ProductsUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ProductsDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ProductID);
			p.SourceColumn = ColumnNames.ProductID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ProductID);
			p.SourceColumn = ColumnNames.ProductID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ProductName);
			p.SourceColumn = ColumnNames.ProductName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.SupplierID);
			p.SourceColumn = ColumnNames.SupplierID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CategoryID);
			p.SourceColumn = ColumnNames.CategoryID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.QuantityPerUnit);
			p.SourceColumn = ColumnNames.QuantityPerUnit;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UnitPrice);
			p.SourceColumn = ColumnNames.UnitPrice;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UnitsInStock);
			p.SourceColumn = ColumnNames.UnitsInStock;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UnitsOnOrder);
			p.SourceColumn = ColumnNames.UnitsOnOrder;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ReorderLevel);
			p.SourceColumn = ColumnNames.ReorderLevel;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Discontinued);
			p.SourceColumn = ColumnNames.Discontinued;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
