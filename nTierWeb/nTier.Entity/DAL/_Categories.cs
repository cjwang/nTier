
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
	public abstract class _Categories : SqlClientEntity
	{
		public _Categories()
		{
			this.QuerySource = "Categories";
			this.MappingName = "Categories";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_CategoriesLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int CategoryID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.CategoryID, CategoryID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_CategoriesLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter CategoryID
			{
				get
				{
					return new SqlParameter("@CategoryID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CategoryName
			{
				get
				{
					return new SqlParameter("@CategoryName", SqlDbType.NVarChar, 15);
				}
			}
			
			public static SqlParameter Description
			{
				get
				{
					return new SqlParameter("@Description", SqlDbType.NText, 1073741823);
				}
			}
			
			public static SqlParameter Picture
			{
				get
				{
					return new SqlParameter("@Picture", SqlDbType.Image, 2147483647);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string CategoryID = "CategoryID";
            public const string CategoryName = "CategoryName";
            public const string Description = "Description";
            public const string Picture = "Picture";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CategoryID] = _Categories.PropertyNames.CategoryID;
					ht[CategoryName] = _Categories.PropertyNames.CategoryName;
					ht[Description] = _Categories.PropertyNames.Description;
					ht[Picture] = _Categories.PropertyNames.Picture;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string CategoryID = "CategoryID";
            public const string CategoryName = "CategoryName";
            public const string Description = "Description";
            public const string Picture = "Picture";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CategoryID] = _Categories.ColumnNames.CategoryID;
					ht[CategoryName] = _Categories.ColumnNames.CategoryName;
					ht[Description] = _Categories.ColumnNames.Description;
					ht[Picture] = _Categories.ColumnNames.Picture;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string CategoryID = "s_CategoryID";
            public const string CategoryName = "s_CategoryName";
            public const string Description = "s_Description";

		}
		#endregion		
		
		#region Properties
	
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

		public virtual string CategoryName
	    {
			get
	        {
				return base.Getstring(ColumnNames.CategoryName);
			}
			set
	        {
				base.Setstring(ColumnNames.CategoryName, value);
			}
		}

		public virtual string Description
	    {
			get
	        {
				return base.Getstring(ColumnNames.Description);
			}
			set
	        {
				base.Setstring(ColumnNames.Description, value);
			}
		}

		public virtual byte[] Picture
	    {
			get
	        {
				return base.GetByteArray(ColumnNames.Picture);
			}
			set
	        {
				base.SetByteArray(ColumnNames.Picture, value);
			}
		}


		#endregion
		
		#region String Properties
	
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

		public virtual string s_CategoryName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CategoryName) ? string.Empty : base.GetstringAsString(ColumnNames.CategoryName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CategoryName);
				else
					this.CategoryName = base.SetstringAsString(ColumnNames.CategoryName, value);
			}
		}

		public virtual string s_Description
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Description) ? string.Empty : base.GetstringAsString(ColumnNames.Description);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Description);
				else
					this.Description = base.SetstringAsString(ColumnNames.Description, value);
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
				
				
				public WhereParameter CategoryID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CategoryID, Parameters.CategoryID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CategoryName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CategoryName, Parameters.CategoryName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Description
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Picture
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Picture, Parameters.Picture);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
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

			public WhereParameter CategoryName
		    {
				get
		        {
					if(_CategoryName_W == null)
	        	    {
						_CategoryName_W = TearOff.CategoryName;
					}
					return _CategoryName_W;
				}
			}

			public WhereParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			public WhereParameter Picture
		    {
				get
		        {
					if(_Picture_W == null)
	        	    {
						_Picture_W = TearOff.Picture;
					}
					return _Picture_W;
				}
			}

			private WhereParameter _CategoryID_W = null;
			private WhereParameter _CategoryName_W = null;
			private WhereParameter _Description_W = null;
			private WhereParameter _Picture_W = null;

			public void WhereClauseReset()
			{
				_CategoryID_W = null;
				_CategoryName_W = null;
				_Description_W = null;
				_Picture_W = null;

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
				
				
				public AggregateParameter CategoryID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CategoryID, Parameters.CategoryID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CategoryName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CategoryName, Parameters.CategoryName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Description
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Picture
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Picture, Parameters.Picture);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
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

			public AggregateParameter CategoryName
		    {
				get
		        {
					if(_CategoryName_W == null)
	        	    {
						_CategoryName_W = TearOff.CategoryName;
					}
					return _CategoryName_W;
				}
			}

			public AggregateParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			public AggregateParameter Picture
		    {
				get
		        {
					if(_Picture_W == null)
	        	    {
						_Picture_W = TearOff.Picture;
					}
					return _Picture_W;
				}
			}

			private AggregateParameter _CategoryID_W = null;
			private AggregateParameter _CategoryName_W = null;
			private AggregateParameter _Description_W = null;
			private AggregateParameter _Picture_W = null;

			public void AggregateClauseReset()
			{
				_CategoryID_W = null;
				_CategoryName_W = null;
				_Description_W = null;
				_Picture_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CategoriesInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.CategoryID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CategoriesUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CategoriesDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.CategoryID);
			p.SourceColumn = ColumnNames.CategoryID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.CategoryID);
			p.SourceColumn = ColumnNames.CategoryID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CategoryName);
			p.SourceColumn = ColumnNames.CategoryName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Description);
			p.SourceColumn = ColumnNames.Description;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Picture);
			p.SourceColumn = ColumnNames.Picture;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
